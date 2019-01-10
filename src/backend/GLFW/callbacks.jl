function nk_glfw3_char_callback(win::GLFW.Window, codepoint::Char)
    if glfw.text_len < NK_GLFW_TEXT_MAX
        glfw.text_len += 1
        glfw.text[glfw.text_len] = codepoint
    end
    return nothing
end

function nk_gflw3_scroll_callback(win::GLFW.Window, xoff::Cdouble, yoff::Cdouble)
    new_x = glfw.scroll.x + Cfloat(xoff)
    new_y = glfw.scroll.y + Cfloat(yoff)
    glfw.scroll = nk_vec2(new_x, new_y)
    return nothing
end

function nk_glfw3_mouse_button_callback(window::GLFW.Window, button::GLFW.MouseButton, action::GLFW.Action, mods::Cint)
    button != GLFW.MOUSE_BUTTON_LEFT && return nothing
    x, y = GLFW.GetCursorPos(window)
    if action == GLFW.PRESS
        dt = time_ns()/1e9 - glfw.last_button_click
        if NK_GLFW_DOUBLE_CLICK_LO < dt < NK_GLFW_DOUBLE_CLICK_HI
            glfw.is_double_click_down = true
            glfw.double_click_pos = nk_vec2(Cfloat(x), Cfloat(y))
        end
        glfw.last_button_click = time_ns()/1e9
    else
        glfw.is_double_click_down = false
    end
    return nothing
end

function nk_glfw3_clipboard_paste(usr::nk_handle, edit::Ptr{nk_text_edit})::Cvoid
    text = clipboard()
    !isempty(text) && nk_textedit_paste(edit, text, nk_strlen(text))
    return nothing
end

function nk_glfw3_clipboard_copy(usr::nk_handle, text::Ptr{UInt8}, len::Cint)::Cvoid
    len != 0 && clipboard(unsafe_string(text, len))
    return nothing
end
