using Nuklear
using Nuklear.LibNuklear
using Nuklear.GLFWBackend
using GLFW, ModernGL

const WINDOW_WIDTH = 1200
const WINDOW_HEIGHT = 800

const MAX_VERTEX_BUFFER = 512 * 1024
const MAX_ELEMENT_BUFFER = 128 * 1024

@static if Sys.isapple()
    const VERSION_MAJOR = 3
    const VERSION_MINOR = 3
end

@static if Sys.isapple()
    GLFW.WindowHint(GLFW.CONTEXT_VERSION_MAJOR, VERSION_MAJOR)
    GLFW.WindowHint(GLFW.CONTEXT_VERSION_MINOR, VERSION_MINOR)
    GLFW.WindowHint(GLFW.OPENGL_PROFILE, GLFW.OPENGL_CORE_PROFILE)
    GLFW.WindowHint(GLFW.OPENGL_FORWARD_COMPAT, GL_TRUE)
else
    GLFW.DefaultWindowHints()
end

# set up GLFW error callback
error_callback(err::GLFW.GLFWError) = @error "GLFW ERROR: code $(err.code) msg: $(err.description)"
GLFW.SetErrorCallback(error_callback)

# create window
win = GLFW.CreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Demo")
@assert win != C_NULL
GLFW.MakeContextCurrent(win)
glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

# init context
ctx = nk_glfw3_init(win, NK_GLFW3_INSTALL_CALLBACKS, MAX_VERTEX_BUFFER, MAX_ELEMENT_BUFFER)

# init font
nk_glfw3_font_stash_begin()
nk_glfw3_font_stash_end()

# window flags
show_menu = Ref{Cint}(true)
titlebar = Ref{Cint}(true)
border = Ref{Cint}(true)
resize = Ref{Cint}(true)
movable = Ref{Cint}(true)
no_scrollbar = Ref{Cint}(false)
scale_left = Ref{Cint}(false)
window_flags = nk_flags(0)
minimizable = Ref{Cint}(true)
# popups
show_app_about = Ref{Cint}(false)

# states
# menubar
mprog = Ref{nk_size}(60)
mslider = Ref{Cint}(10)
mcheck = Ref{Cint}(true)
prog = Ref{Csize_t}(40)
slider = Ref{Cint}(10)
check = Ref{Cint}(true)
@enum menu_state_enum MENU_NONE MENU_FILE MENU_EDIT MENU_VIEW MENU_CHART
menu_state = MENU_NONE
# widgets
checkbox = Ref{Cint}(0)
option = 0
int_slider = Ref{Cint}(5)
float_slider = Ref{Cfloat}(2.5)
prog_value = Ref{Csize_t}(40)
property_float = Ref{Cfloat}(2)
property_int = Ref{Cint}(10)
property_neg = Ref{Cint}(10)
range_float_min = Ref{Cfloat}(0)
range_float_max = Ref{Cfloat}(100)
range_float_value = Ref{Cfloat}(50)
range_int_min = Ref{Cint}(0)
range_int_value = Ref{Cint}(2048)
range_int_max = Ref{Cint}(4096)

# render loop
while !GLFW.WindowShouldClose(win)
    global show_menu; global titlebar; global border; global resize; global movable;
    global no_scrollbar; global scale_left; global window_flags; global minimizable
    global show_app_about; global int_slider; global float_slider; global prog_value;
    global property_float; global property_int; global property_neg;
    global range_float_min; global range_float_max; global range_float_value;
    global range_int_min; global range_int_value; global range_int_max;

    GLFW.PollEvents()
    nk_glfw3_new_frame()

    Bool(border[]) && (window_flags |= NK_WINDOW_BORDER;)
    Bool(resize[]) && (window_flags |= NK_WINDOW_SCALABLE;)
    Bool(movable[]) && (window_flags |= NK_WINDOW_MOVABLE;)
    Bool(no_scrollbar[]) && (window_flags |= NK_WINDOW_NO_SCROLLBAR;)
    Bool(scale_left[]) && (window_flags |= NK_WINDOW_SCALE_LEFT;)
    Bool(minimizable[]) && (window_flags |= NK_WINDOW_MINIMIZABLE;)

    if Bool(nk_begin(ctx, "Overview", nk_rect(10, 10, 400, 600), window_flags))
        if Bool(show_menu[])
            # menubar
            nk_menubar_begin(ctx)

            # menu #1
            nk_layout_row_begin(ctx, NK_STATIC, 25, 5)
            nk_layout_row_push(ctx, 45)
            if Bool(nk_menu_begin_label(ctx, "MENU", NK_TEXT_LEFT, nk_vec2(120, 200)))
                nk_layout_row_dynamic(ctx, 25, 1)
                Bool(nk_menu_item_label(ctx, "Hide", NK_TEXT_LEFT)) && (show_menu[] = false;)
                Bool(nk_menu_item_label(ctx, "About", NK_TEXT_LEFT)) && (show_app_about[] = true;)
                nk_progress(ctx, prog, 100, NK_MODIFIABLE)
                nk_slider_int(ctx, 0, slider, 16, 1)
                nk_checkbox_label(ctx, "check", check)
                nk_menu_end(ctx)
            end

            # menu #2
            global menu_state
            nk_layout_row_push(ctx, 60)
            if Bool(nk_menu_begin_label(ctx, "ADVANCED", NK_TEXT_LEFT, nk_vec2(200, 600)))
                menu_state = MENU_NONE
                state = Ref{nk_collapse_states}(NK_MINIMIZED)
                state[] = (menu_state == MENU_FILE) ? NK_MAXIMIZED : NK_MINIMIZED
                if Bool(nk_tree_state_push(ctx, NK_TREE_TAB, "FILE", state))
                    menu_state = MENU_FILE
                    nk_menu_item_label(ctx, "New", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Open", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Save", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Close", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Exit", NK_TEXT_LEFT)
                    nk_tree_pop(ctx)
                else
                    menu_state = (menu_state == MENU_FILE) ? MENU_NONE : menu_state
                end

                state[] = (menu_state == MENU_EDIT) ? NK_MAXIMIZED : NK_MINIMIZED
                if Bool(nk_tree_state_push(ctx, NK_TREE_TAB, "EDIT", state))
                    menu_state = MENU_EDIT
                    nk_menu_item_label(ctx, "Copy", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Delete", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Cut", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Paste", NK_TEXT_LEFT)
                    nk_tree_pop(ctx)
                else
                    menu_state = (menu_state == MENU_EDIT) ? MENU_NONE : menu_state
                end

                state[] = (menu_state == MENU_VIEW) ? NK_MAXIMIZED : NK_MINIMIZED
                if Bool(nk_tree_state_push(ctx, NK_TREE_TAB, "VIEW", state))
                    menu_state = MENU_VIEW
                    nk_menu_item_label(ctx, "About", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Options", NK_TEXT_LEFT)
                    nk_menu_item_label(ctx, "Customize", NK_TEXT_LEFT)
                    nk_tree_pop(ctx)
                else
                    menu_state = (menu_state == MENU_VIEW) ? MENU_NONE : menu_state
                end

                state[] = (menu_state == MENU_CHART) ? NK_MAXIMIZED : NK_MINIMIZED
                if Bool(nk_tree_state_push(ctx, NK_TREE_TAB, "CHART", state))
                    values = Cfloat[26,13,30,15,25,10,20,40,12,8,22,28]
                    menu_state = MENU_CHART
                    nk_layout_row_dynamic(ctx, 150, 1)
                    nk_chart_begin(ctx, NK_CHART_COLUMN, length(values), 0, 50)
                    for i = 1:length(values)
                        nk_chart_push(ctx, values[i])
                    end
                    nk_chart_end(ctx)
                    nk_tree_pop(ctx)
                else
                    menu_state = (menu_state == MENU_CHART) ? MENU_NONE : menu_state
                end
                nk_menu_end(ctx)
            end
            # menu widgets
            nk_layout_row_push(ctx, 70)
            nk_progress(ctx, mprog, 100, NK_MODIFIABLE)
            nk_slider_int(ctx, 0, mslider, 16, 1)
            nk_checkbox_label(ctx, "check", mcheck)
            nk_menubar_end(ctx)
        end

        # about popup
        if Bool(show_app_about[])
           s = nk_rect(20, 100, 300, 190)
           if Bool(nk_popup_begin(ctx, NK_POPUP_STATIC, "About", NK_WINDOW_CLOSABLE, s))
               nk_layout_row_dynamic(ctx, 20, 1)
               nk_label(ctx, "Nuklear", NK_TEXT_LEFT)
               nk_label(ctx, "By Micha Mettke", NK_TEXT_LEFT)
               nk_label(ctx, "nuklear is licensed under the public domain License.", NK_TEXT_LEFT)
               nk_popup_end(ctx)
           else
               show_app_about = false
           end
        end

        # window flags
        if Bool(nk_tree_push(ctx, NK_TREE_TAB, "Window", NK_MINIMIZED))
            nk_layout_row_dynamic(ctx, 30, 2)
            nk_checkbox_label(ctx, "Titlebar", titlebar)
            nk_checkbox_label(ctx, "Menu", show_menu)
            nk_checkbox_label(ctx, "Border", border)
            nk_checkbox_label(ctx, "Resizable", resize)
            nk_checkbox_label(ctx, "Movable", movable)
            nk_checkbox_label(ctx, "No Scrollbar", no_scrollbar)
            nk_checkbox_label(ctx, "Minimizable", minimizable)
            nk_checkbox_label(ctx, "Scale Left", scale_left)
            nk_tree_pop(ctx)
        end

        # if Bool(nk_tree_push(ctx, NK_TREE_TAB, "Widgets", NK_MINIMIZED))
        #     @enum options A B C
        #     global checkbox
        #     global option
        #     if Bool(nk_tree_push(ctx, NK_TREE_NODE, "Text", NK_MINIMIZED))
        #         # Text Widgets
        #         nk_layout_row_dynamic(ctx, 20, 1)
        #         nk_label(ctx, "Label aligned left", NK_TEXT_LEFT)
        #         nk_label(ctx, "Label aligned centered", NK_TEXT_CENTERED)
        #         nk_label(ctx, "Label aligned right", NK_TEXT_RIGHT)
        #         nk_label_colored(ctx, "Blue text", NK_TEXT_LEFT, nk_rgb(0,0,255))
        #         nk_label_colored(ctx, "Yellow text", NK_TEXT_LEFT, nk_rgb(255,255,0))
        #         nk_text(ctx, "Text without /0", 15, NK_TEXT_RIGHT)
        #
        #         nk_layout_row_static(ctx, 100, 200, 1)
        #         nk_label_wrap(ctx, "This is a very long line to hopefully get this text to be wrapped into multiple lines to show line wrapping")
        #         nk_layout_row_dynamic(ctx, 100, 1)
        #         nk_label_wrap(ctx, "This is another long text to show dynamic window changes on multiline text")
        #         nk_tree_pop(ctx)
        #     end
        #
        #     if Bool(nk_tree_push(ctx, NK_TREE_NODE, "Button", NK_MINIMIZED))
        #         # Buttons Widgets
        #         nk_layout_row_static(ctx, 30, 100, 3)
        #         Bool(nk_button_label(ctx, "Button")) && println("Button pressed!")
        #         nk_button_set_behavior(ctx, NK_BUTTON_REPEATER)
        #         Bool(nk_button_label(ctx, "Repeater")) && println("Repeater is being pressed!")
        #         nk_button_set_behavior(ctx, NK_BUTTON_DEFAULT)
        #         nk_button_color(ctx, nk_rgb(0,0,255))
        #
        #         nk_layout_row_static(ctx, 25, 25, 8)
        #         nk_button_symbol(ctx, NK_SYMBOL_CIRCLE_SOLID)
        #         nk_button_symbol(ctx, NK_SYMBOL_CIRCLE_OUTLINE)
        #         nk_button_symbol(ctx, NK_SYMBOL_RECT_SOLID)
        #         nk_button_symbol(ctx, NK_SYMBOL_RECT_OUTLINE)
        #         nk_button_symbol(ctx, NK_SYMBOL_TRIANGLE_UP)
        #         nk_button_symbol(ctx, NK_SYMBOL_TRIANGLE_DOWN)
        #         nk_button_symbol(ctx, NK_SYMBOL_TRIANGLE_LEFT)
        #         nk_button_symbol(ctx, NK_SYMBOL_TRIANGLE_RIGHT)
        #
        #         nk_layout_row_static(ctx, 30, 100, 2)
        #         nk_button_symbol_label(ctx, NK_SYMBOL_TRIANGLE_LEFT, "prev", NK_TEXT_RIGHT)
        #         nk_button_symbol_label(ctx, NK_SYMBOL_TRIANGLE_RIGHT, "next", NK_TEXT_LEFT)
        #         nk_tree_pop(ctx)
        #     end
        #
        #     if Bool(nk_tree_push(ctx, NK_TREE_NODE, "Basic", NK_MINIMIZED))
        #         # Basic widgets
        #         ratio = Cfloat[120, 150]
        #
        #         nk_layout_row_static(ctx, 30, 100, 1)
        #         nk_checkbox_label(ctx, "Checkbox", checkbox)
        #
        #         nk_layout_row_static(ctx, 30, 80, 3)
        #         option = Bool(nk_option_label(ctx, "optionA", option == A)) ? A : option
        #         option = Bool(nk_option_label(ctx, "optionB", option == B)) ? B : option
        #         option = Bool(nk_option_label(ctx, "optionC", option == C)) ? C : option
        #
        #         # nk_layout_row(ctx, NK_STATIC, 30, 2, ratio)
        #         # nk_labelf(ctx, NK_TEXT_LEFT, "Slider int")
        #         # nk_slider_int(ctx, 0, int_slider, 10, 1)
        #         #
        #         # nk_label(ctx, "Slider float", NK_TEXT_LEFT)
        #         # nk_slider_float(ctx, 0, float_slider, 5.0, 0.5)
        #         # nk_labelf(ctx, NK_TEXT_LEFT, "Progressbar: %zu" , prog_value[])
        #         # nk_progress(ctx, prog_value, 100, NK_MODIFIABLE)
        #
        #         nk_layout_row(ctx, NK_STATIC, 25, 2, ratio)
        #         nk_label(ctx, "Property float:", NK_TEXT_LEFT)
        #         nk_property_float(ctx, "Float:", 0, property_float, 64.0, 0.1, 0.2)
        #         nk_label(ctx, "Property int:", NK_TEXT_LEFT)
        #         nk_property_int(ctx, "Int:", 0, property_int, 100.0, 1, 1)
        #         nk_label(ctx, "Property neg:", NK_TEXT_LEFT)
        #         nk_property_int(ctx, "Neg:", -10, property_neg, 10, 1, 1)
        #
        #         nk_layout_row_dynamic(ctx, 25, 1)
        #         nk_label(ctx, "Range:", NK_TEXT_LEFT)
        #         nk_layout_row_dynamic(ctx, 25, 3)
        #         nk_property_float(ctx, "#min:", 0, range_float_min, range_float_max[], 1.0, 0.2)
        #         nk_property_float(ctx, "#float:", range_float_min[], range_float_value, range_float_max[], 1.0, 0.2)
        #         nk_property_float(ctx, "#max:", range_float_min[], range_float_max, 100, 1.0, 0.2)
        #
        #         nk_property_int(ctx, "#min:", INT_MIN, range_int_min, range_int_max[], 1, 10)
        #         nk_property_int(ctx, "#neg:", range_int_min[], range_int_value, range_int_max[], 1, 10)
        #         nk_property_int(ctx, "#max:", range_int_min[], range_int_max, typemax(Cint), 1, 10)
        #
        #         nk_tree_pop(ctx)
        #     end
        # end
    end
    nk_end(ctx)

    # draw
    width, height = GLFW.GetWindowSize(win)
    glViewport(0, 0, width, height)
    glClear(GL_COLOR_BUFFER_BIT)
    # glClearColor(bg.r, bg.g, bg.b, bg.a)
    nk_glfw3_render(NK_ANTI_ALIASING_ON, MAX_VERTEX_BUFFER, MAX_ELEMENT_BUFFER)
    GLFW.SwapBuffers(win)
end

nk_glfw3_shutdown()
GLFW.DestroyWindow(win)
