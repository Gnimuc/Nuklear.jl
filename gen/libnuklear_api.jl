# Julia wrapper for header: /Users/gnimuc/.julia/dev/Nuklear/deps/usr/include/nuklear.h
# Automatically generated using Clang.jl


function nk_init_default(arg1, arg2)
    ccall((:nk_init_default, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_user_font}), arg1, arg2)
end

function nk_init_fixed(arg1, memory, size, arg2)
    ccall((:nk_init_fixed, libnuklear), Cint, (Ptr{nk_context}, Ptr{Cvoid}, nk_size, Ptr{nk_user_font}), arg1, memory, size, arg2)
end

function nk_init(arg1, arg2, arg3)
    ccall((:nk_init, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_allocator}, Ptr{nk_user_font}), arg1, arg2, arg3)
end

function nk_init_custom(arg1, cmds, pool, arg2)
    ccall((:nk_init_custom, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_buffer}, Ptr{nk_buffer}, Ptr{nk_user_font}), arg1, cmds, pool, arg2)
end

function nk_clear(arg1)
    ccall((:nk_clear, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_free(arg1)
    ccall((:nk_free, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_input_begin(arg1)
    ccall((:nk_input_begin, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_input_motion(arg1, x, y)
    ccall((:nk_input_motion, libnuklear), Cvoid, (Ptr{nk_context}, Cint, Cint), arg1, x, y)
end

function nk_input_key(arg1, arg2, down)
    ccall((:nk_input_key, libnuklear), Cvoid, (Ptr{nk_context}, nk_keys, Cint), arg1, arg2, down)
end

function nk_input_button(arg1, arg2, x, y, down)
    ccall((:nk_input_button, libnuklear), Cvoid, (Ptr{nk_context}, nk_buttons, Cint, Cint, Cint), arg1, arg2, x, y, down)
end

function nk_input_scroll(arg1, val)
    ccall((:nk_input_scroll, libnuklear), Cvoid, (Ptr{nk_context}, nk_vec2), arg1, val)
end

function nk_input_char(arg1, arg2)
    ccall((:nk_input_char, libnuklear), Cvoid, (Ptr{nk_context}, UInt8), arg1, arg2)
end

function nk_input_glyph(arg1, arg2)
    ccall((:nk_input_glyph, libnuklear), Cvoid, (Ptr{nk_context}, nk_glyph), arg1, arg2)
end

function nk_input_unicode(arg1, arg2)
    ccall((:nk_input_unicode, libnuklear), Cvoid, (Ptr{nk_context}, nk_rune), arg1, arg2)
end

function nk_input_end(arg1)
    ccall((:nk_input_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk__begin(arg1)
    ccall((:nk__begin, libnuklear), Ptr{nk_command}, (Ptr{nk_context},), arg1)
end

function nk__next(arg1, arg2)
    ccall((:nk__next, libnuklear), Ptr{nk_command}, (Ptr{nk_context}, Ptr{nk_command}), arg1, arg2)
end

function nk_convert(arg1, cmds, vertices, elements, arg2)
    ccall((:nk_convert, libnuklear), nk_flags, (Ptr{nk_context}, Ptr{nk_buffer}, Ptr{nk_buffer}, Ptr{nk_buffer}, Ptr{nk_convert_config}), arg1, cmds, vertices, elements, arg2)
end

function nk__draw_begin(arg1, arg2)
    ccall((:nk__draw_begin, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_context}, Ptr{nk_buffer}), arg1, arg2)
end

function nk__draw_end(arg1, arg2)
    ccall((:nk__draw_end, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_context}, Ptr{nk_buffer}), arg1, arg2)
end

function nk__draw_next(arg1, arg2, arg3)
    ccall((:nk__draw_next, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_command}, Ptr{nk_buffer}, Ptr{nk_context}), arg1, arg2, arg3)
end

function nk_begin(ctx, title, bounds, flags)
    ccall((:nk_begin, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_rect, nk_flags), ctx, title, bounds, flags)
end

function nk_begin_titled(ctx, name, title, bounds, flags)
    ccall((:nk_begin_titled, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cstring, nk_rect, nk_flags), ctx, name, title, bounds, flags)
end

function nk_end(ctx)
    ccall((:nk_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_window_find(ctx, name)
    ccall((:nk_window_find, libnuklear), Ptr{nk_window}, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_get_bounds(ctx)
    ccall((:nk_window_get_bounds, libnuklear), nk_rect, (Ptr{nk_context},), ctx)
end

function nk_window_get_position(ctx)
    ccall((:nk_window_get_position, libnuklear), nk_vec2, (Ptr{nk_context},), ctx)
end

function nk_window_get_size(arg1)
    ccall((:nk_window_get_size, libnuklear), nk_vec2, (Ptr{nk_context},), arg1)
end

function nk_window_get_width(arg1)
    ccall((:nk_window_get_width, libnuklear), Cfloat, (Ptr{nk_context},), arg1)
end

function nk_window_get_height(arg1)
    ccall((:nk_window_get_height, libnuklear), Cfloat, (Ptr{nk_context},), arg1)
end

function nk_window_get_panel(arg1)
    ccall((:nk_window_get_panel, libnuklear), Ptr{nk_panel}, (Ptr{nk_context},), arg1)
end

function nk_window_get_content_region(arg1)
    ccall((:nk_window_get_content_region, libnuklear), nk_rect, (Ptr{nk_context},), arg1)
end

function nk_window_get_content_region_min(arg1)
    ccall((:nk_window_get_content_region_min, libnuklear), nk_vec2, (Ptr{nk_context},), arg1)
end

function nk_window_get_content_region_max(arg1)
    ccall((:nk_window_get_content_region_max, libnuklear), nk_vec2, (Ptr{nk_context},), arg1)
end

function nk_window_get_content_region_size(arg1)
    ccall((:nk_window_get_content_region_size, libnuklear), nk_vec2, (Ptr{nk_context},), arg1)
end

function nk_window_get_canvas(arg1)
    ccall((:nk_window_get_canvas, libnuklear), Ptr{nk_command_buffer}, (Ptr{nk_context},), arg1)
end

function nk_window_has_focus(arg1)
    ccall((:nk_window_has_focus, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_window_is_hovered(arg1)
    ccall((:nk_window_is_hovered, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_window_is_collapsed(ctx, name)
    ccall((:nk_window_is_collapsed, libnuklear), Cint, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_is_closed(arg1, arg2)
    ccall((:nk_window_is_closed, libnuklear), Cint, (Ptr{nk_context}, Cstring), arg1, arg2)
end

function nk_window_is_hidden(arg1, arg2)
    ccall((:nk_window_is_hidden, libnuklear), Cint, (Ptr{nk_context}, Cstring), arg1, arg2)
end

function nk_window_is_active(arg1, arg2)
    ccall((:nk_window_is_active, libnuklear), Cint, (Ptr{nk_context}, Cstring), arg1, arg2)
end

function nk_window_is_any_hovered(arg1)
    ccall((:nk_window_is_any_hovered, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_item_is_any_active(arg1)
    ccall((:nk_item_is_any_active, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_window_set_bounds(arg1, name, bounds)
    ccall((:nk_window_set_bounds, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_rect), arg1, name, bounds)
end

function nk_window_set_position(arg1, name, pos)
    ccall((:nk_window_set_position, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_vec2), arg1, name, pos)
end

function nk_window_set_size(arg1, name, arg2)
    ccall((:nk_window_set_size, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_vec2), arg1, name, arg2)
end

function nk_window_set_focus(arg1, name)
    ccall((:nk_window_set_focus, libnuklear), Cvoid, (Ptr{nk_context}, Cstring), arg1, name)
end

function nk_window_close(ctx, name)
    ccall((:nk_window_close, libnuklear), Cvoid, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_collapse(arg1, name, state)
    ccall((:nk_window_collapse, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_collapse_states), arg1, name, state)
end

function nk_window_collapse_if(arg1, name, arg2, cond)
    ccall((:nk_window_collapse_if, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_collapse_states, Cint), arg1, name, arg2, cond)
end

function nk_window_show(arg1, name, arg2)
    ccall((:nk_window_show, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_show_states), arg1, name, arg2)
end

function nk_window_show_if(arg1, name, arg2, cond)
    ccall((:nk_window_show_if, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_show_states, Cint), arg1, name, arg2, cond)
end

function nk_layout_set_min_row_height(arg1, height)
    ccall((:nk_layout_set_min_row_height, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), arg1, height)
end

function nk_layout_reset_min_row_height(arg1)
    ccall((:nk_layout_reset_min_row_height, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_layout_widget_bounds(arg1)
    ccall((:nk_layout_widget_bounds, libnuklear), nk_rect, (Ptr{nk_context},), arg1)
end

function nk_layout_ratio_from_pixel(arg1, pixel_width)
    ccall((:nk_layout_ratio_from_pixel, libnuklear), Cfloat, (Ptr{nk_context}, Cfloat), arg1, pixel_width)
end

function nk_layout_row_dynamic(ctx, height, cols)
    ccall((:nk_layout_row_dynamic, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat, Cint), ctx, height, cols)
end

function nk_layout_row_static(ctx, height, item_width, cols)
    ccall((:nk_layout_row_static, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat, Cint, Cint), ctx, height, item_width, cols)
end

function nk_layout_row_begin(ctx, fmt, row_height, cols)
    ccall((:nk_layout_row_begin, libnuklear), Cvoid, (Ptr{nk_context}, nk_layout_format, Cfloat, Cint), ctx, fmt, row_height, cols)
end

function nk_layout_row_push(arg1, value)
    ccall((:nk_layout_row_push, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), arg1, value)
end

function nk_layout_row_end(arg1)
    ccall((:nk_layout_row_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_layout_row(arg1, arg2, height, cols, ratio)
    ccall((:nk_layout_row, libnuklear), Cvoid, (Ptr{nk_context}, nk_layout_format, Cfloat, Cint, Ptr{Cfloat}), arg1, arg2, height, cols, ratio)
end

function nk_layout_row_template_begin(arg1, row_height)
    ccall((:nk_layout_row_template_begin, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), arg1, row_height)
end

function nk_layout_row_template_push_dynamic(arg1)
    ccall((:nk_layout_row_template_push_dynamic, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_layout_row_template_push_variable(arg1, min_width)
    ccall((:nk_layout_row_template_push_variable, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), arg1, min_width)
end

function nk_layout_row_template_push_static(arg1, width)
    ccall((:nk_layout_row_template_push_static, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), arg1, width)
end

function nk_layout_row_template_end(arg1)
    ccall((:nk_layout_row_template_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_layout_space_begin(arg1, arg2, height, widget_count)
    ccall((:nk_layout_space_begin, libnuklear), Cvoid, (Ptr{nk_context}, nk_layout_format, Cfloat, Cint), arg1, arg2, height, widget_count)
end

function nk_layout_space_push(arg1, bounds)
    ccall((:nk_layout_space_push, libnuklear), Cvoid, (Ptr{nk_context}, nk_rect), arg1, bounds)
end

function nk_layout_space_end(arg1)
    ccall((:nk_layout_space_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_layout_space_bounds(arg1)
    ccall((:nk_layout_space_bounds, libnuklear), nk_rect, (Ptr{nk_context},), arg1)
end

function nk_layout_space_to_screen(arg1, arg2)
    ccall((:nk_layout_space_to_screen, libnuklear), nk_vec2, (Ptr{nk_context}, nk_vec2), arg1, arg2)
end

function nk_layout_space_to_local(arg1, arg2)
    ccall((:nk_layout_space_to_local, libnuklear), nk_vec2, (Ptr{nk_context}, nk_vec2), arg1, arg2)
end

function nk_layout_space_rect_to_screen(arg1, arg2)
    ccall((:nk_layout_space_rect_to_screen, libnuklear), nk_rect, (Ptr{nk_context}, nk_rect), arg1, arg2)
end

function nk_layout_space_rect_to_local(arg1, arg2)
    ccall((:nk_layout_space_rect_to_local, libnuklear), nk_rect, (Ptr{nk_context}, nk_rect), arg1, arg2)
end

function nk_group_begin(arg1, title, arg2)
    ccall((:nk_group_begin, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags), arg1, title, arg2)
end

function nk_group_begin_titled(arg1, name, title, arg2)
    ccall((:nk_group_begin_titled, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cstring, nk_flags), arg1, name, title, arg2)
end

function nk_group_end(arg1)
    ccall((:nk_group_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_group_scrolled_offset_begin(arg1, x_offset, y_offset, title, flags)
    ccall((:nk_group_scrolled_offset_begin, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_uint}, Ptr{nk_uint}, Cstring, nk_flags), arg1, x_offset, y_offset, title, flags)
end

function nk_group_scrolled_begin(arg1, off, title, arg2)
    ccall((:nk_group_scrolled_begin, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_scroll}, Cstring, nk_flags), arg1, off, title, arg2)
end

function nk_group_scrolled_end(arg1)
    ccall((:nk_group_scrolled_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_tree_push_hashed(arg1, arg2, title, initial_state, hash, len, seed)
    ccall((:nk_tree_push_hashed, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Cstring, nk_collapse_states, Cstring, Cint, Cint), arg1, arg2, title, initial_state, hash, len, seed)
end

function nk_tree_image_push_hashed(arg1, arg2, arg3, title, initial_state, hash, len, seed)
    ccall((:nk_tree_image_push_hashed, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, nk_image, Cstring, nk_collapse_states, Cstring, Cint, Cint), arg1, arg2, arg3, title, initial_state, hash, len, seed)
end

function nk_tree_pop(arg1)
    ccall((:nk_tree_pop, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_tree_state_push(arg1, arg2, title, state)
    ccall((:nk_tree_state_push, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Cstring, Ptr{nk_collapse_states}), arg1, arg2, title, state)
end

function nk_tree_state_image_push(arg1, arg2, arg3, title, state)
    ccall((:nk_tree_state_image_push, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, nk_image, Cstring, Ptr{nk_collapse_states}), arg1, arg2, arg3, title, state)
end

function nk_tree_state_pop(arg1)
    ccall((:nk_tree_state_pop, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_tree_element_push_hashed(arg1, arg2, title, initial_state, selected, hash, len, seed)
    ccall((:nk_tree_element_push_hashed, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Cstring, nk_collapse_states, Ptr{Cint}, Cstring, Cint, Cint), arg1, arg2, title, initial_state, selected, hash, len, seed)
end

function nk_tree_element_image_push_hashed(arg1, arg2, arg3, title, initial_state, selected, hash, len, seed)
    ccall((:nk_tree_element_image_push_hashed, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, nk_image, Cstring, nk_collapse_states, Ptr{Cint}, Cstring, Cint, Cint), arg1, arg2, arg3, title, initial_state, selected, hash, len, seed)
end

function nk_tree_element_pop(arg1)
    ccall((:nk_tree_element_pop, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_list_view_begin(arg1, out, id, arg2, row_height, row_count)
    ccall((:nk_list_view_begin, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_list_view}, Cstring, nk_flags, Cint, Cint), arg1, out, id, arg2, row_height, row_count)
end

function nk_list_view_end(arg1)
    ccall((:nk_list_view_end, libnuklear), Cvoid, (Ptr{nk_list_view},), arg1)
end

function nk_widget(arg1, arg2)
    ccall((:nk_widget, libnuklear), nk_widget_layout_states, (Ptr{nk_rect}, Ptr{nk_context}), arg1, arg2)
end

function nk_widget_fitting(arg1, arg2, arg3)
    ccall((:nk_widget_fitting, libnuklear), nk_widget_layout_states, (Ptr{nk_rect}, Ptr{nk_context}, nk_vec2), arg1, arg2, arg3)
end

function nk_widget_bounds(arg1)
    ccall((:nk_widget_bounds, libnuklear), nk_rect, (Ptr{nk_context},), arg1)
end

function nk_widget_position(arg1)
    ccall((:nk_widget_position, libnuklear), nk_vec2, (Ptr{nk_context},), arg1)
end

function nk_widget_size(arg1)
    ccall((:nk_widget_size, libnuklear), nk_vec2, (Ptr{nk_context},), arg1)
end

function nk_widget_width(arg1)
    ccall((:nk_widget_width, libnuklear), Cfloat, (Ptr{nk_context},), arg1)
end

function nk_widget_height(arg1)
    ccall((:nk_widget_height, libnuklear), Cfloat, (Ptr{nk_context},), arg1)
end

function nk_widget_is_hovered(arg1)
    ccall((:nk_widget_is_hovered, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_widget_is_mouse_clicked(arg1, arg2)
    ccall((:nk_widget_is_mouse_clicked, libnuklear), Cint, (Ptr{nk_context}, nk_buttons), arg1, arg2)
end

function nk_widget_has_mouse_click_down(arg1, arg2, down)
    ccall((:nk_widget_has_mouse_click_down, libnuklear), Cint, (Ptr{nk_context}, nk_buttons, Cint), arg1, arg2, down)
end

function nk_spacing(arg1, cols)
    ccall((:nk_spacing, libnuklear), Cvoid, (Ptr{nk_context}, Cint), arg1, cols)
end

function nk_text(arg1, arg2, arg3, arg4)
    ccall((:nk_text, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, nk_flags), arg1, arg2, arg3, arg4)
end

function nk_text_colored(arg1, arg2, arg3, arg4, arg5)
    ccall((:nk_text_colored, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, nk_flags, nk_color), arg1, arg2, arg3, arg4, arg5)
end

function nk_text_wrap(arg1, arg2, arg3)
    ccall((:nk_text_wrap, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint), arg1, arg2, arg3)
end

function nk_text_wrap_colored(arg1, arg2, arg3, arg4)
    ccall((:nk_text_wrap_colored, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, nk_color), arg1, arg2, arg3, arg4)
end

function nk_label(arg1, arg2, align)
    ccall((:nk_label, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_flags), arg1, arg2, align)
end

function nk_label_colored(arg1, arg2, align, arg3)
    ccall((:nk_label_colored, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_flags, nk_color), arg1, arg2, align, arg3)
end

function nk_label_wrap(arg1, arg2)
    ccall((:nk_label_wrap, libnuklear), Cvoid, (Ptr{nk_context}, Cstring), arg1, arg2)
end

function nk_label_colored_wrap(arg1, arg2, arg3)
    ccall((:nk_label_colored_wrap, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_color), arg1, arg2, arg3)
end

function nk_image(arg1, arg2)
    ccall((:nk_image, libnuklear), Cvoid, (Ptr{nk_context}, nk_image), arg1, arg2)
end

function nk_image_color(arg1, arg2, arg3)
    ccall((:nk_image_color, libnuklear), Cvoid, (Ptr{nk_context}, nk_image, nk_color), arg1, arg2, arg3)
end

function nk_button_text(arg1, title, len)
    ccall((:nk_button_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint), arg1, title, len)
end

function nk_button_label(arg1, title)
    ccall((:nk_button_label, libnuklear), Cint, (Ptr{nk_context}, Cstring), arg1, title)
end

function nk_button_color(arg1, arg2)
    ccall((:nk_button_color, libnuklear), Cint, (Ptr{nk_context}, nk_color), arg1, arg2)
end

function nk_button_symbol(arg1, arg2)
    ccall((:nk_button_symbol, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type), arg1, arg2)
end

function nk_button_image(arg1, img)
    ccall((:nk_button_image, libnuklear), Cint, (Ptr{nk_context}, nk_image), arg1, img)
end

function nk_button_symbol_label(arg1, arg2, arg3, text_alignment)
    ccall((:nk_button_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags), arg1, arg2, arg3, text_alignment)
end

function nk_button_symbol_text(arg1, arg2, arg3, arg4, alignment)
    ccall((:nk_button_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags), arg1, arg2, arg3, arg4, alignment)
end

function nk_button_image_label(arg1, img, arg2, text_alignment)
    ccall((:nk_button_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags), arg1, img, arg2, text_alignment)
end

function nk_button_image_text(arg1, img, arg2, arg3, alignment)
    ccall((:nk_button_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags), arg1, img, arg2, arg3, alignment)
end

function nk_button_text_styled(arg1, arg2, title, len)
    ccall((:nk_button_text_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, Cstring, Cint), arg1, arg2, title, len)
end

function nk_button_label_styled(arg1, arg2, title)
    ccall((:nk_button_label_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, Cstring), arg1, arg2, title)
end

function nk_button_symbol_styled(arg1, arg2, arg3)
    ccall((:nk_button_symbol_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_symbol_type), arg1, arg2, arg3)
end

function nk_button_image_styled(arg1, arg2, img)
    ccall((:nk_button_image_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_image), arg1, arg2, img)
end

function nk_button_symbol_text_styled(arg1, arg2, arg3, arg4, arg5, alignment)
    ccall((:nk_button_symbol_text_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_symbol_type, Cstring, Cint, nk_flags), arg1, arg2, arg3, arg4, arg5, alignment)
end

function nk_button_symbol_label_styled(ctx, style, symbol, title, align)
    ccall((:nk_button_symbol_label_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_symbol_type, Cstring, nk_flags), ctx, style, symbol, title, align)
end

function nk_button_image_label_styled(arg1, arg2, img, arg3, text_alignment)
    ccall((:nk_button_image_label_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_image, Cstring, nk_flags), arg1, arg2, img, arg3, text_alignment)
end

function nk_button_image_text_styled(arg1, arg2, img, arg3, arg4, alignment)
    ccall((:nk_button_image_text_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_image, Cstring, Cint, nk_flags), arg1, arg2, img, arg3, arg4, alignment)
end

function nk_button_set_behavior(arg1, arg2)
    ccall((:nk_button_set_behavior, libnuklear), Cvoid, (Ptr{nk_context}, nk_button_behavior), arg1, arg2)
end

function nk_button_push_behavior(arg1, arg2)
    ccall((:nk_button_push_behavior, libnuklear), Cint, (Ptr{nk_context}, nk_button_behavior), arg1, arg2)
end

function nk_button_pop_behavior(arg1)
    ccall((:nk_button_pop_behavior, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_check_label(arg1, arg2, active)
    ccall((:nk_check_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint), arg1, arg2, active)
end

function nk_check_text(arg1, arg2, arg3, active)
    ccall((:nk_check_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint), arg1, arg2, arg3, active)
end

function nk_check_flags_label(arg1, arg2, flags, value)
    ccall((:nk_check_flags_label, libnuklear), UInt32, (Ptr{nk_context}, Cstring, UInt32, UInt32), arg1, arg2, flags, value)
end

function nk_check_flags_text(arg1, arg2, arg3, flags, value)
    ccall((:nk_check_flags_text, libnuklear), UInt32, (Ptr{nk_context}, Cstring, Cint, UInt32, UInt32), arg1, arg2, arg3, flags, value)
end

function nk_checkbox_label(arg1, arg2, active)
    ccall((:nk_checkbox_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Ptr{Cint}), arg1, arg2, active)
end

function nk_checkbox_text(arg1, arg2, arg3, active)
    ccall((:nk_checkbox_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Ptr{Cint}), arg1, arg2, arg3, active)
end

function nk_checkbox_flags_label(arg1, arg2, flags, value)
    ccall((:nk_checkbox_flags_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Ptr{UInt32}, UInt32), arg1, arg2, flags, value)
end

function nk_checkbox_flags_text(arg1, arg2, arg3, flags, value)
    ccall((:nk_checkbox_flags_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Ptr{UInt32}, UInt32), arg1, arg2, arg3, flags, value)
end

function nk_radio_label(arg1, arg2, active)
    ccall((:nk_radio_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Ptr{Cint}), arg1, arg2, active)
end

function nk_radio_text(arg1, arg2, arg3, active)
    ccall((:nk_radio_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Ptr{Cint}), arg1, arg2, arg3, active)
end

function nk_option_label(arg1, arg2, active)
    ccall((:nk_option_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint), arg1, arg2, active)
end

function nk_option_text(arg1, arg2, arg3, active)
    ccall((:nk_option_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint), arg1, arg2, arg3, active)
end

function nk_selectable_label(arg1, arg2, align, value)
    ccall((:nk_selectable_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, Ptr{Cint}), arg1, arg2, align, value)
end

function nk_selectable_text(arg1, arg2, arg3, align, value)
    ccall((:nk_selectable_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, Ptr{Cint}), arg1, arg2, arg3, align, value)
end

function nk_selectable_image_label(arg1, arg2, arg3, align, value)
    ccall((:nk_selectable_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags, Ptr{Cint}), arg1, arg2, arg3, align, value)
end

function nk_selectable_image_text(arg1, arg2, arg3, arg4, align, value)
    ccall((:nk_selectable_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags, Ptr{Cint}), arg1, arg2, arg3, arg4, align, value)
end

function nk_selectable_symbol_label(arg1, arg2, arg3, align, value)
    ccall((:nk_selectable_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags, Ptr{Cint}), arg1, arg2, arg3, align, value)
end

function nk_selectable_symbol_text(arg1, arg2, arg3, arg4, align, value)
    ccall((:nk_selectable_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags, Ptr{Cint}), arg1, arg2, arg3, arg4, align, value)
end

function nk_select_label(arg1, arg2, align, value)
    ccall((:nk_select_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, Cint), arg1, arg2, align, value)
end

function nk_select_text(arg1, arg2, arg3, align, value)
    ccall((:nk_select_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, Cint), arg1, arg2, arg3, align, value)
end

function nk_select_image_label(arg1, arg2, arg3, align, value)
    ccall((:nk_select_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags, Cint), arg1, arg2, arg3, align, value)
end

function nk_select_image_text(arg1, arg2, arg3, arg4, align, value)
    ccall((:nk_select_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags, Cint), arg1, arg2, arg3, arg4, align, value)
end

function nk_select_symbol_label(arg1, arg2, arg3, align, value)
    ccall((:nk_select_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags, Cint), arg1, arg2, arg3, align, value)
end

function nk_select_symbol_text(arg1, arg2, arg3, arg4, align, value)
    ccall((:nk_select_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags, Cint), arg1, arg2, arg3, arg4, align, value)
end

function nk_slide_float(arg1, min, val, max, step)
    ccall((:nk_slide_float, libnuklear), Cfloat, (Ptr{nk_context}, Cfloat, Cfloat, Cfloat, Cfloat), arg1, min, val, max, step)
end

function nk_slide_int(arg1, min, val, max, step)
    ccall((:nk_slide_int, libnuklear), Cint, (Ptr{nk_context}, Cint, Cint, Cint, Cint), arg1, min, val, max, step)
end

function nk_slider_float(arg1, min, val, max, step)
    ccall((:nk_slider_float, libnuklear), Cint, (Ptr{nk_context}, Cfloat, Ptr{Cfloat}, Cfloat, Cfloat), arg1, min, val, max, step)
end

function nk_slider_int(arg1, min, val, max, step)
    ccall((:nk_slider_int, libnuklear), Cint, (Ptr{nk_context}, Cint, Ptr{Cint}, Cint, Cint), arg1, min, val, max, step)
end

function nk_progress(arg1, cur, max, modifyable)
    ccall((:nk_progress, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_size}, nk_size, Cint), arg1, cur, max, modifyable)
end

function nk_prog(arg1, cur, max, modifyable)
    ccall((:nk_prog, libnuklear), nk_size, (Ptr{nk_context}, nk_size, nk_size, Cint), arg1, cur, max, modifyable)
end

function nk_color_picker(arg1, arg2, arg3)
    ccall((:nk_color_picker, libnuklear), nk_colorf, (Ptr{nk_context}, nk_colorf, nk_color_format), arg1, arg2, arg3)
end

function nk_color_pick(arg1, arg2, arg3)
    ccall((:nk_color_pick, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_colorf}, nk_color_format), arg1, arg2, arg3)
end

function nk_property_int(arg1, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_property_int, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, Ptr{Cint}, Cint, Cint, Cfloat), arg1, name, min, val, max, step, inc_per_pixel)
end

function nk_property_float(arg1, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_property_float, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cfloat, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), arg1, name, min, val, max, step, inc_per_pixel)
end

function nk_property_double(arg1, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_property_double, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cdouble, Ptr{Cdouble}, Cdouble, Cdouble, Cfloat), arg1, name, min, val, max, step, inc_per_pixel)
end

function nk_propertyi(arg1, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_propertyi, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint, Cint, Cint, Cfloat), arg1, name, min, val, max, step, inc_per_pixel)
end

function nk_propertyf(arg1, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_propertyf, libnuklear), Cfloat, (Ptr{nk_context}, Cstring, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), arg1, name, min, val, max, step, inc_per_pixel)
end

function nk_propertyd(arg1, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_propertyd, libnuklear), Cdouble, (Ptr{nk_context}, Cstring, Cdouble, Cdouble, Cdouble, Cdouble, Cfloat), arg1, name, min, val, max, step, inc_per_pixel)
end

function nk_edit_string(arg1, arg2, buffer, len, max, arg3)
    ccall((:nk_edit_string, libnuklear), nk_flags, (Ptr{nk_context}, nk_flags, Cstring, Ptr{Cint}, Cint, nk_plugin_filter), arg1, arg2, buffer, len, max, arg3)
end

function nk_edit_string_zero_terminated(arg1, arg2, buffer, max, arg3)
    ccall((:nk_edit_string_zero_terminated, libnuklear), nk_flags, (Ptr{nk_context}, nk_flags, Cstring, Cint, nk_plugin_filter), arg1, arg2, buffer, max, arg3)
end

function nk_edit_buffer(arg1, arg2, arg3, arg4)
    ccall((:nk_edit_buffer, libnuklear), nk_flags, (Ptr{nk_context}, nk_flags, Ptr{nk_text_edit}, nk_plugin_filter), arg1, arg2, arg3, arg4)
end

function nk_edit_focus(arg1, flags)
    ccall((:nk_edit_focus, libnuklear), Cvoid, (Ptr{nk_context}, nk_flags), arg1, flags)
end

function nk_edit_unfocus(arg1)
    ccall((:nk_edit_unfocus, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_chart_begin(arg1, arg2, num, min, max)
    ccall((:nk_chart_begin, libnuklear), Cint, (Ptr{nk_context}, nk_chart_type, Cint, Cfloat, Cfloat), arg1, arg2, num, min, max)
end

function nk_chart_begin_colored(arg1, arg2, arg3, active, num, min, max)
    ccall((:nk_chart_begin_colored, libnuklear), Cint, (Ptr{nk_context}, nk_chart_type, nk_color, nk_color, Cint, Cfloat, Cfloat), arg1, arg2, arg3, active, num, min, max)
end

function nk_chart_add_slot(ctx, arg1, count, min_value, max_value)
    ccall((:nk_chart_add_slot, libnuklear), Cvoid, (Ptr{nk_context}, nk_chart_type, Cint, Cfloat, Cfloat), ctx, arg1, count, min_value, max_value)
end

function nk_chart_add_slot_colored(ctx, arg1, arg2, active, count, min_value, max_value)
    ccall((:nk_chart_add_slot_colored, libnuklear), Cvoid, (Ptr{nk_context}, nk_chart_type, nk_color, nk_color, Cint, Cfloat, Cfloat), ctx, arg1, arg2, active, count, min_value, max_value)
end

function nk_chart_push(arg1, arg2)
    ccall((:nk_chart_push, libnuklear), nk_flags, (Ptr{nk_context}, Cfloat), arg1, arg2)
end

function nk_chart_push_slot(arg1, arg2, arg3)
    ccall((:nk_chart_push_slot, libnuklear), nk_flags, (Ptr{nk_context}, Cfloat, Cint), arg1, arg2, arg3)
end

function nk_chart_end(arg1)
    ccall((:nk_chart_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_plot(arg1, arg2, values, count, offset)
    ccall((:nk_plot, libnuklear), Cvoid, (Ptr{nk_context}, nk_chart_type, Ptr{Cfloat}, Cint, Cint), arg1, arg2, values, count, offset)
end

function nk_plot_function(arg1, arg2, userdata, value_getter, count, offset)
    ccall((:nk_plot_function, libnuklear), Cvoid, (Ptr{nk_context}, nk_chart_type, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint), arg1, arg2, userdata, value_getter, count, offset)
end

function nk_popup_begin(arg1, arg2, arg3, arg4, bounds)
    ccall((:nk_popup_begin, libnuklear), Cint, (Ptr{nk_context}, nk_popup_type, Cstring, nk_flags, nk_rect), arg1, arg2, arg3, arg4, bounds)
end

function nk_popup_close(arg1)
    ccall((:nk_popup_close, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_popup_end(arg1)
    ccall((:nk_popup_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_combo(arg1, items, count, selected, item_height, size)
    ccall((:nk_combo, libnuklear), Cint, (Ptr{nk_context}, Ptr{Cstring}, Cint, Cint, Cint, nk_vec2), arg1, items, count, selected, item_height, size)
end

function nk_combo_separator(arg1, items_separated_by_separator, separator, selected, count, item_height, size)
    ccall((:nk_combo_separator, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint, Cint, Cint, nk_vec2), arg1, items_separated_by_separator, separator, selected, count, item_height, size)
end

function nk_combo_string(arg1, items_separated_by_zeros, selected, count, item_height, size)
    ccall((:nk_combo_string, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint, Cint, nk_vec2), arg1, items_separated_by_zeros, selected, count, item_height, size)
end

function nk_combo_callback(arg1, item_getter, userdata, selected, count, item_height, size)
    ccall((:nk_combo_callback, libnuklear), Cint, (Ptr{nk_context}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint, nk_vec2), arg1, item_getter, userdata, selected, count, item_height, size)
end

function nk_combobox(arg1, items, count, selected, item_height, size)
    ccall((:nk_combobox, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{Cstring}, Cint, Ptr{Cint}, Cint, nk_vec2), arg1, items, count, selected, item_height, size)
end

function nk_combobox_string(arg1, items_separated_by_zeros, selected, count, item_height, size)
    ccall((:nk_combobox_string, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Ptr{Cint}, Cint, Cint, nk_vec2), arg1, items_separated_by_zeros, selected, count, item_height, size)
end

function nk_combobox_separator(arg1, items_separated_by_separator, separator, selected, count, item_height, size)
    ccall((:nk_combobox_separator, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, Ptr{Cint}, Cint, Cint, nk_vec2), arg1, items_separated_by_separator, separator, selected, count, item_height, size)
end

function nk_combobox_callback(arg1, item_getter, arg2, selected, count, item_height, size)
    ccall((:nk_combobox_callback, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cint}, Cint, Cint, nk_vec2), arg1, item_getter, arg2, selected, count, item_height, size)
end

function nk_combo_begin_text(arg1, selected, arg2, size)
    ccall((:nk_combo_begin_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_vec2), arg1, selected, arg2, size)
end

function nk_combo_begin_label(arg1, selected, size)
    ccall((:nk_combo_begin_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_vec2), arg1, selected, size)
end

function nk_combo_begin_color(arg1, color, size)
    ccall((:nk_combo_begin_color, libnuklear), Cint, (Ptr{nk_context}, nk_color, nk_vec2), arg1, color, size)
end

function nk_combo_begin_symbol(arg1, arg2, size)
    ccall((:nk_combo_begin_symbol, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, nk_vec2), arg1, arg2, size)
end

function nk_combo_begin_symbol_label(arg1, selected, arg2, size)
    ccall((:nk_combo_begin_symbol_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_symbol_type, nk_vec2), arg1, selected, arg2, size)
end

function nk_combo_begin_symbol_text(arg1, selected, arg2, arg3, size)
    ccall((:nk_combo_begin_symbol_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_symbol_type, nk_vec2), arg1, selected, arg2, arg3, size)
end

function nk_combo_begin_image(arg1, img, size)
    ccall((:nk_combo_begin_image, libnuklear), Cint, (Ptr{nk_context}, nk_image, nk_vec2), arg1, img, size)
end

function nk_combo_begin_image_label(arg1, selected, arg2, size)
    ccall((:nk_combo_begin_image_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_image, nk_vec2), arg1, selected, arg2, size)
end

function nk_combo_begin_image_text(arg1, selected, arg2, arg3, size)
    ccall((:nk_combo_begin_image_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_image, nk_vec2), arg1, selected, arg2, arg3, size)
end

function nk_combo_item_label(arg1, arg2, alignment)
    ccall((:nk_combo_item_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags), arg1, arg2, alignment)
end

function nk_combo_item_text(arg1, arg2, arg3, alignment)
    ccall((:nk_combo_item_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags), arg1, arg2, arg3, alignment)
end

function nk_combo_item_image_label(arg1, arg2, arg3, alignment)
    ccall((:nk_combo_item_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags), arg1, arg2, arg3, alignment)
end

function nk_combo_item_image_text(arg1, arg2, arg3, arg4, alignment)
    ccall((:nk_combo_item_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags), arg1, arg2, arg3, arg4, alignment)
end

function nk_combo_item_symbol_label(arg1, arg2, arg3, alignment)
    ccall((:nk_combo_item_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags), arg1, arg2, arg3, alignment)
end

function nk_combo_item_symbol_text(arg1, arg2, arg3, arg4, alignment)
    ccall((:nk_combo_item_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags), arg1, arg2, arg3, arg4, alignment)
end

function nk_combo_close(arg1)
    ccall((:nk_combo_close, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_combo_end(arg1)
    ccall((:nk_combo_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_contextual_begin(arg1, arg2, arg3, trigger_bounds)
    ccall((:nk_contextual_begin, libnuklear), Cint, (Ptr{nk_context}, nk_flags, nk_vec2, nk_rect), arg1, arg2, arg3, trigger_bounds)
end

function nk_contextual_item_text(arg1, arg2, arg3, align)
    ccall((:nk_contextual_item_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags), arg1, arg2, arg3, align)
end

function nk_contextual_item_label(arg1, arg2, align)
    ccall((:nk_contextual_item_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags), arg1, arg2, align)
end

function nk_contextual_item_image_label(arg1, arg2, arg3, alignment)
    ccall((:nk_contextual_item_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags), arg1, arg2, arg3, alignment)
end

function nk_contextual_item_image_text(arg1, arg2, arg3, len, alignment)
    ccall((:nk_contextual_item_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags), arg1, arg2, arg3, len, alignment)
end

function nk_contextual_item_symbol_label(arg1, arg2, arg3, alignment)
    ccall((:nk_contextual_item_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags), arg1, arg2, arg3, alignment)
end

function nk_contextual_item_symbol_text(arg1, arg2, arg3, arg4, alignment)
    ccall((:nk_contextual_item_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags), arg1, arg2, arg3, arg4, alignment)
end

function nk_contextual_close(arg1)
    ccall((:nk_contextual_close, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_contextual_end(arg1)
    ccall((:nk_contextual_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_tooltip(arg1, arg2)
    ccall((:nk_tooltip, libnuklear), Cvoid, (Ptr{nk_context}, Cstring), arg1, arg2)
end

function nk_tooltip_begin(arg1, width)
    ccall((:nk_tooltip_begin, libnuklear), Cint, (Ptr{nk_context}, Cfloat), arg1, width)
end

function nk_tooltip_end(arg1)
    ccall((:nk_tooltip_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_menubar_begin(arg1)
    ccall((:nk_menubar_begin, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_menubar_end(arg1)
    ccall((:nk_menubar_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_menu_begin_text(arg1, title, title_len, align, size)
    ccall((:nk_menu_begin_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, nk_vec2), arg1, title, title_len, align, size)
end

function nk_menu_begin_label(arg1, arg2, align, size)
    ccall((:nk_menu_begin_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, nk_vec2), arg1, arg2, align, size)
end

function nk_menu_begin_image(arg1, arg2, arg3, size)
    ccall((:nk_menu_begin_image, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_image, nk_vec2), arg1, arg2, arg3, size)
end

function nk_menu_begin_image_text(arg1, arg2, arg3, align, arg4, size)
    ccall((:nk_menu_begin_image_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, nk_image, nk_vec2), arg1, arg2, arg3, align, arg4, size)
end

function nk_menu_begin_image_label(arg1, arg2, align, arg3, size)
    ccall((:nk_menu_begin_image_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, nk_image, nk_vec2), arg1, arg2, align, arg3, size)
end

function nk_menu_begin_symbol(arg1, arg2, arg3, size)
    ccall((:nk_menu_begin_symbol, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_symbol_type, nk_vec2), arg1, arg2, arg3, size)
end

function nk_menu_begin_symbol_text(arg1, arg2, arg3, align, arg4, size)
    ccall((:nk_menu_begin_symbol_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, nk_symbol_type, nk_vec2), arg1, arg2, arg3, align, arg4, size)
end

function nk_menu_begin_symbol_label(arg1, arg2, align, arg3, size)
    ccall((:nk_menu_begin_symbol_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, nk_symbol_type, nk_vec2), arg1, arg2, align, arg3, size)
end

function nk_menu_item_text(arg1, arg2, arg3, align)
    ccall((:nk_menu_item_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags), arg1, arg2, arg3, align)
end

function nk_menu_item_label(arg1, arg2, alignment)
    ccall((:nk_menu_item_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags), arg1, arg2, alignment)
end

function nk_menu_item_image_label(arg1, arg2, arg3, alignment)
    ccall((:nk_menu_item_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags), arg1, arg2, arg3, alignment)
end

function nk_menu_item_image_text(arg1, arg2, arg3, len, alignment)
    ccall((:nk_menu_item_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags), arg1, arg2, arg3, len, alignment)
end

function nk_menu_item_symbol_text(arg1, arg2, arg3, arg4, alignment)
    ccall((:nk_menu_item_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags), arg1, arg2, arg3, arg4, alignment)
end

function nk_menu_item_symbol_label(arg1, arg2, arg3, alignment)
    ccall((:nk_menu_item_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags), arg1, arg2, arg3, alignment)
end

function nk_menu_close(arg1)
    ccall((:nk_menu_close, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_menu_end(arg1)
    ccall((:nk_menu_end, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_style_default(arg1)
    ccall((:nk_style_default, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_style_from_table(arg1, arg2)
    ccall((:nk_style_from_table, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_color}), arg1, arg2)
end

function nk_style_load_cursor(arg1, arg2, arg3)
    ccall((:nk_style_load_cursor, libnuklear), Cvoid, (Ptr{nk_context}, nk_style_cursor, Ptr{nk_cursor}), arg1, arg2, arg3)
end

function nk_style_load_all_cursors(arg1, arg2)
    ccall((:nk_style_load_all_cursors, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_cursor}), arg1, arg2)
end

function nk_style_get_color_by_name(arg1)
    ccall((:nk_style_get_color_by_name, libnuklear), Cstring, (nk_style_colors,), arg1)
end

function nk_style_set_font(arg1, arg2)
    ccall((:nk_style_set_font, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_user_font}), arg1, arg2)
end

function nk_style_set_cursor(arg1, arg2)
    ccall((:nk_style_set_cursor, libnuklear), Cint, (Ptr{nk_context}, nk_style_cursor), arg1, arg2)
end

function nk_style_show_cursor(arg1)
    ccall((:nk_style_show_cursor, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_style_hide_cursor(arg1)
    ccall((:nk_style_hide_cursor, libnuklear), Cvoid, (Ptr{nk_context},), arg1)
end

function nk_style_push_font(arg1, arg2)
    ccall((:nk_style_push_font, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_user_font}), arg1, arg2)
end

function nk_style_push_float(arg1, arg2, arg3)
    ccall((:nk_style_push_float, libnuklear), Cint, (Ptr{nk_context}, Ptr{Cfloat}, Cfloat), arg1, arg2, arg3)
end

function nk_style_push_vec2(arg1, arg2, arg3)
    ccall((:nk_style_push_vec2, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_vec2}, nk_vec2), arg1, arg2, arg3)
end

function nk_style_push_style_item(arg1, arg2, arg3)
    ccall((:nk_style_push_style_item, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_item}, nk_style_item), arg1, arg2, arg3)
end

function nk_style_push_flags(arg1, arg2, arg3)
    ccall((:nk_style_push_flags, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_flags}, nk_flags), arg1, arg2, arg3)
end

function nk_style_push_color(arg1, arg2, arg3)
    ccall((:nk_style_push_color, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_color}, nk_color), arg1, arg2, arg3)
end

function nk_style_pop_font(arg1)
    ccall((:nk_style_pop_font, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_style_pop_float(arg1)
    ccall((:nk_style_pop_float, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_style_pop_vec2(arg1)
    ccall((:nk_style_pop_vec2, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_style_pop_style_item(arg1)
    ccall((:nk_style_pop_style_item, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_style_pop_flags(arg1)
    ccall((:nk_style_pop_flags, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_style_pop_color(arg1)
    ccall((:nk_style_pop_color, libnuklear), Cint, (Ptr{nk_context},), arg1)
end

function nk_rgb(r, g, b)
    ccall((:nk_rgb, libnuklear), nk_color, (Cint, Cint, Cint), r, g, b)
end

function nk_rgb_iv(rgb)
    ccall((:nk_rgb_iv, libnuklear), nk_color, (Ptr{Cint},), rgb)
end

function nk_rgb_bv(rgb)
    ccall((:nk_rgb_bv, libnuklear), nk_color, (Ptr{nk_byte},), rgb)
end

function nk_rgb_f(r, g, b)
    ccall((:nk_rgb_f, libnuklear), nk_color, (Cfloat, Cfloat, Cfloat), r, g, b)
end

function nk_rgb_fv(rgb)
    ccall((:nk_rgb_fv, libnuklear), nk_color, (Ptr{Cfloat},), rgb)
end

function nk_rgb_cf(c)
    ccall((:nk_rgb_cf, libnuklear), nk_color, (nk_colorf,), c)
end

function nk_rgb_hex(rgb)
    ccall((:nk_rgb_hex, libnuklear), nk_color, (Cstring,), rgb)
end

function nk_rgba(r, g, b, a)
    ccall((:nk_rgba, libnuklear), nk_color, (Cint, Cint, Cint, Cint), r, g, b, a)
end

function nk_rgba_u32(arg1)
    ccall((:nk_rgba_u32, libnuklear), nk_color, (nk_uint,), arg1)
end

function nk_rgba_iv(rgba)
    ccall((:nk_rgba_iv, libnuklear), nk_color, (Ptr{Cint},), rgba)
end

function nk_rgba_bv(rgba)
    ccall((:nk_rgba_bv, libnuklear), nk_color, (Ptr{nk_byte},), rgba)
end

function nk_rgba_f(r, g, b, a)
    ccall((:nk_rgba_f, libnuklear), nk_color, (Cfloat, Cfloat, Cfloat, Cfloat), r, g, b, a)
end

function nk_rgba_fv(rgba)
    ccall((:nk_rgba_fv, libnuklear), nk_color, (Ptr{Cfloat},), rgba)
end

function nk_rgba_cf(c)
    ccall((:nk_rgba_cf, libnuklear), nk_color, (nk_colorf,), c)
end

function nk_rgba_hex(rgb)
    ccall((:nk_rgba_hex, libnuklear), nk_color, (Cstring,), rgb)
end

function nk_hsva_colorf(h, s, v, a)
    ccall((:nk_hsva_colorf, libnuklear), nk_colorf, (Cfloat, Cfloat, Cfloat, Cfloat), h, s, v, a)
end

function nk_hsva_colorfv(c)
    ccall((:nk_hsva_colorfv, libnuklear), nk_colorf, (Ptr{Cfloat},), c)
end

function nk_colorf_hsva_f(out_h, out_s, out_v, out_a, in)
    ccall((:nk_colorf_hsva_f, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, nk_colorf), out_h, out_s, out_v, out_a, in)
end

function nk_colorf_hsva_fv(hsva, in)
    ccall((:nk_colorf_hsva_fv, libnuklear), Cvoid, (Ptr{Cfloat}, nk_colorf), hsva, in)
end

function nk_hsv(h, s, v)
    ccall((:nk_hsv, libnuklear), nk_color, (Cint, Cint, Cint), h, s, v)
end

function nk_hsv_iv(hsv)
    ccall((:nk_hsv_iv, libnuklear), nk_color, (Ptr{Cint},), hsv)
end

function nk_hsv_bv(hsv)
    ccall((:nk_hsv_bv, libnuklear), nk_color, (Ptr{nk_byte},), hsv)
end

function nk_hsv_f(h, s, v)
    ccall((:nk_hsv_f, libnuklear), nk_color, (Cfloat, Cfloat, Cfloat), h, s, v)
end

function nk_hsv_fv(hsv)
    ccall((:nk_hsv_fv, libnuklear), nk_color, (Ptr{Cfloat},), hsv)
end

function nk_hsva(h, s, v, a)
    ccall((:nk_hsva, libnuklear), nk_color, (Cint, Cint, Cint, Cint), h, s, v, a)
end

function nk_hsva_iv(hsva)
    ccall((:nk_hsva_iv, libnuklear), nk_color, (Ptr{Cint},), hsva)
end

function nk_hsva_bv(hsva)
    ccall((:nk_hsva_bv, libnuklear), nk_color, (Ptr{nk_byte},), hsva)
end

function nk_hsva_f(h, s, v, a)
    ccall((:nk_hsva_f, libnuklear), nk_color, (Cfloat, Cfloat, Cfloat, Cfloat), h, s, v, a)
end

function nk_hsva_fv(hsva)
    ccall((:nk_hsva_fv, libnuklear), nk_color, (Ptr{Cfloat},), hsva)
end

function nk_color_f(r, g, b, a, arg1)
    ccall((:nk_color_f, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, nk_color), r, g, b, a, arg1)
end

function nk_color_fv(rgba_out, arg1)
    ccall((:nk_color_fv, libnuklear), Cvoid, (Ptr{Cfloat}, nk_color), rgba_out, arg1)
end

function nk_color_cf(arg1)
    ccall((:nk_color_cf, libnuklear), nk_colorf, (nk_color,), arg1)
end

function nk_color_d(r, g, b, a, arg1)
    ccall((:nk_color_d, libnuklear), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, nk_color), r, g, b, a, arg1)
end

function nk_color_dv(rgba_out, arg1)
    ccall((:nk_color_dv, libnuklear), Cvoid, (Ptr{Cdouble}, nk_color), rgba_out, arg1)
end

function nk_color_u32(arg1)
    ccall((:nk_color_u32, libnuklear), nk_uint, (nk_color,), arg1)
end

function nk_color_hex_rgba(output, arg1)
    ccall((:nk_color_hex_rgba, libnuklear), Cvoid, (Cstring, nk_color), output, arg1)
end

function nk_color_hex_rgb(output, arg1)
    ccall((:nk_color_hex_rgb, libnuklear), Cvoid, (Cstring, nk_color), output, arg1)
end

function nk_color_hsv_i(out_h, out_s, out_v, arg1)
    ccall((:nk_color_hsv_i, libnuklear), Cvoid, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, nk_color), out_h, out_s, out_v, arg1)
end

function nk_color_hsv_b(out_h, out_s, out_v, arg1)
    ccall((:nk_color_hsv_b, libnuklear), Cvoid, (Ptr{nk_byte}, Ptr{nk_byte}, Ptr{nk_byte}, nk_color), out_h, out_s, out_v, arg1)
end

function nk_color_hsv_iv(hsv_out, arg1)
    ccall((:nk_color_hsv_iv, libnuklear), Cvoid, (Ptr{Cint}, nk_color), hsv_out, arg1)
end

function nk_color_hsv_bv(hsv_out, arg1)
    ccall((:nk_color_hsv_bv, libnuklear), Cvoid, (Ptr{nk_byte}, nk_color), hsv_out, arg1)
end

function nk_color_hsv_f(out_h, out_s, out_v, arg1)
    ccall((:nk_color_hsv_f, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, nk_color), out_h, out_s, out_v, arg1)
end

function nk_color_hsv_fv(hsv_out, arg1)
    ccall((:nk_color_hsv_fv, libnuklear), Cvoid, (Ptr{Cfloat}, nk_color), hsv_out, arg1)
end

function nk_color_hsva_i(h, s, v, a, arg1)
    ccall((:nk_color_hsva_i, libnuklear), Cvoid, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, nk_color), h, s, v, a, arg1)
end

function nk_color_hsva_b(h, s, v, a, arg1)
    ccall((:nk_color_hsva_b, libnuklear), Cvoid, (Ptr{nk_byte}, Ptr{nk_byte}, Ptr{nk_byte}, Ptr{nk_byte}, nk_color), h, s, v, a, arg1)
end

function nk_color_hsva_iv(hsva_out, arg1)
    ccall((:nk_color_hsva_iv, libnuklear), Cvoid, (Ptr{Cint}, nk_color), hsva_out, arg1)
end

function nk_color_hsva_bv(hsva_out, arg1)
    ccall((:nk_color_hsva_bv, libnuklear), Cvoid, (Ptr{nk_byte}, nk_color), hsva_out, arg1)
end

function nk_color_hsva_f(out_h, out_s, out_v, out_a, arg1)
    ccall((:nk_color_hsva_f, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, nk_color), out_h, out_s, out_v, out_a, arg1)
end

function nk_color_hsva_fv(hsva_out, arg1)
    ccall((:nk_color_hsva_fv, libnuklear), Cvoid, (Ptr{Cfloat}, nk_color), hsva_out, arg1)
end

function nk_handle_ptr(arg1)
    ccall((:nk_handle_ptr, libnuklear), nk_handle, (Ptr{Cvoid},), arg1)
end

function nk_handle_id(arg1)
    ccall((:nk_handle_id, libnuklear), nk_handle, (Cint,), arg1)
end

function nk_image_handle(arg1)
    ccall((:nk_image_handle, libnuklear), nk_image, (nk_handle,), arg1)
end

function nk_image_ptr(arg1)
    ccall((:nk_image_ptr, libnuklear), nk_image, (Ptr{Cvoid},), arg1)
end

function nk_image_id(arg1)
    ccall((:nk_image_id, libnuklear), nk_image, (Cint,), arg1)
end

function nk_image_is_subimage(img)
    ccall((:nk_image_is_subimage, libnuklear), Cint, (Ptr{nk_image},), img)
end

function nk_subimage_ptr(arg1, w, h, sub_region)
    ccall((:nk_subimage_ptr, libnuklear), nk_image, (Ptr{Cvoid}, UInt16, UInt16, nk_rect), arg1, w, h, sub_region)
end

function nk_subimage_id(arg1, w, h, sub_region)
    ccall((:nk_subimage_id, libnuklear), nk_image, (Cint, UInt16, UInt16, nk_rect), arg1, w, h, sub_region)
end

function nk_subimage_handle(arg1, w, h, sub_region)
    ccall((:nk_subimage_handle, libnuklear), nk_image, (nk_handle, UInt16, UInt16, nk_rect), arg1, w, h, sub_region)
end

function nk_murmur_hash(key, len, seed)
    ccall((:nk_murmur_hash, libnuklear), nk_hash, (Ptr{Cvoid}, Cint, nk_hash), key, len, seed)
end

function nk_triangle_from_direction(result, r, pad_x, pad_y, arg1)
    ccall((:nk_triangle_from_direction, libnuklear), Cvoid, (Ptr{nk_vec2}, nk_rect, Cfloat, Cfloat, nk_heading), result, r, pad_x, pad_y, arg1)
end

function nk_vec2(x, y)
    ccall((:nk_vec2, libnuklear), nk_vec2, (Cfloat, Cfloat), x, y)
end

function nk_vec2i(x, y)
    ccall((:nk_vec2i, libnuklear), nk_vec2, (Cint, Cint), x, y)
end

function nk_vec2v(xy)
    ccall((:nk_vec2v, libnuklear), nk_vec2, (Ptr{Cfloat},), xy)
end

function nk_vec2iv(xy)
    ccall((:nk_vec2iv, libnuklear), nk_vec2, (Ptr{Cint},), xy)
end

function nk_get_null_rect()
    ccall((:nk_get_null_rect, libnuklear), nk_rect, ())
end

function nk_rect(x, y, w, h)
    ccall((:nk_rect, libnuklear), nk_rect, (Cfloat, Cfloat, Cfloat, Cfloat), x, y, w, h)
end

function nk_recti(x, y, w, h)
    ccall((:nk_recti, libnuklear), nk_rect, (Cint, Cint, Cint, Cint), x, y, w, h)
end

function nk_recta(pos, size)
    ccall((:nk_recta, libnuklear), nk_rect, (nk_vec2, nk_vec2), pos, size)
end

function nk_rectv(xywh)
    ccall((:nk_rectv, libnuklear), nk_rect, (Ptr{Cfloat},), xywh)
end

function nk_rectiv(xywh)
    ccall((:nk_rectiv, libnuklear), nk_rect, (Ptr{Cint},), xywh)
end

function nk_rect_pos(arg1)
    ccall((:nk_rect_pos, libnuklear), nk_vec2, (nk_rect,), arg1)
end

function nk_rect_size(arg1)
    ccall((:nk_rect_size, libnuklear), nk_vec2, (nk_rect,), arg1)
end

function nk_strlen(str)
    ccall((:nk_strlen, libnuklear), Cint, (Cstring,), str)
end

function nk_stricmp(s1, s2)
    ccall((:nk_stricmp, libnuklear), Cint, (Cstring, Cstring), s1, s2)
end

function nk_stricmpn(s1, s2, n)
    ccall((:nk_stricmpn, libnuklear), Cint, (Cstring, Cstring, Cint), s1, s2, n)
end

function nk_strtoi(str, endptr)
    ccall((:nk_strtoi, libnuklear), Cint, (Cstring, Ptr{Cstring}), str, endptr)
end

function nk_strtof(str, endptr)
    ccall((:nk_strtof, libnuklear), Cfloat, (Cstring, Ptr{Cstring}), str, endptr)
end

function nk_strtod(str, endptr)
    ccall((:nk_strtod, libnuklear), Cdouble, (Cstring, Ptr{Cstring}), str, endptr)
end

function nk_strfilter(text, regexp)
    ccall((:nk_strfilter, libnuklear), Cint, (Cstring, Cstring), text, regexp)
end

function nk_strmatch_fuzzy_string(str, pattern, out_score)
    ccall((:nk_strmatch_fuzzy_string, libnuklear), Cint, (Cstring, Cstring, Ptr{Cint}), str, pattern, out_score)
end

function nk_strmatch_fuzzy_text(txt, txt_len, pattern, out_score)
    ccall((:nk_strmatch_fuzzy_text, libnuklear), Cint, (Cstring, Cint, Cstring, Ptr{Cint}), txt, txt_len, pattern, out_score)
end

function nk_utf_decode(arg1, arg2, arg3)
    ccall((:nk_utf_decode, libnuklear), Cint, (Cstring, Ptr{nk_rune}, Cint), arg1, arg2, arg3)
end

function nk_utf_encode(arg1, arg2, arg3)
    ccall((:nk_utf_encode, libnuklear), Cint, (nk_rune, Cstring, Cint), arg1, arg2, arg3)
end

function nk_utf_len(arg1, byte_len)
    ccall((:nk_utf_len, libnuklear), Cint, (Cstring, Cint), arg1, byte_len)
end

function nk_utf_at(buffer, length, index, unicode, len)
    ccall((:nk_utf_at, libnuklear), Cstring, (Cstring, Cint, Cint, Ptr{nk_rune}, Ptr{Cint}), buffer, length, index, unicode, len)
end

function nk_font_default_glyph_ranges()
    ccall((:nk_font_default_glyph_ranges, libnuklear), Ptr{nk_rune}, ())
end

function nk_font_chinese_glyph_ranges()
    ccall((:nk_font_chinese_glyph_ranges, libnuklear), Ptr{nk_rune}, ())
end

function nk_font_cyrillic_glyph_ranges()
    ccall((:nk_font_cyrillic_glyph_ranges, libnuklear), Ptr{nk_rune}, ())
end

function nk_font_korean_glyph_ranges()
    ccall((:nk_font_korean_glyph_ranges, libnuklear), Ptr{nk_rune}, ())
end

function nk_font_atlas_init_default(arg1)
    ccall((:nk_font_atlas_init_default, libnuklear), Cvoid, (Ptr{nk_font_atlas},), arg1)
end

function nk_font_atlas_init(arg1, arg2)
    ccall((:nk_font_atlas_init, libnuklear), Cvoid, (Ptr{nk_font_atlas}, Ptr{nk_allocator}), arg1, arg2)
end

function nk_font_atlas_init_custom(arg1, persistent, transient)
    ccall((:nk_font_atlas_init_custom, libnuklear), Cvoid, (Ptr{nk_font_atlas}, Ptr{nk_allocator}, Ptr{nk_allocator}), arg1, persistent, transient)
end

function nk_font_atlas_begin(arg1)
    ccall((:nk_font_atlas_begin, libnuklear), Cvoid, (Ptr{nk_font_atlas},), arg1)
end

function nk_font_config(pixel_height)
    ccall((:nk_font_config, libnuklear), nk_font_config, (Cfloat,), pixel_height)
end

function nk_font_atlas_add(arg1, arg2)
    ccall((:nk_font_atlas_add, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Ptr{nk_font_config}), arg1, arg2)
end

function nk_font_atlas_add_default(arg1, height, arg2)
    ccall((:nk_font_atlas_add_default, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Cfloat, Ptr{nk_font_config}), arg1, height, arg2)
end

function nk_font_atlas_add_from_memory(atlas, memory, size, height, config)
    ccall((:nk_font_atlas_add_from_memory, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Ptr{Cvoid}, nk_size, Cfloat, Ptr{nk_font_config}), atlas, memory, size, height, config)
end

function nk_font_atlas_add_from_file(atlas, file_path, height, arg1)
    ccall((:nk_font_atlas_add_from_file, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Cstring, Cfloat, Ptr{nk_font_config}), atlas, file_path, height, arg1)
end

function nk_font_atlas_add_compressed(arg1, memory, size, height, arg2)
    ccall((:nk_font_atlas_add_compressed, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Ptr{Cvoid}, nk_size, Cfloat, Ptr{nk_font_config}), arg1, memory, size, height, arg2)
end

function nk_font_atlas_add_compressed_base85(arg1, data, height, config)
    ccall((:nk_font_atlas_add_compressed_base85, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Cstring, Cfloat, Ptr{nk_font_config}), arg1, data, height, config)
end

function nk_font_atlas_bake(arg1, width, height, arg2)
    ccall((:nk_font_atlas_bake, libnuklear), Ptr{Cvoid}, (Ptr{nk_font_atlas}, Ptr{Cint}, Ptr{Cint}, nk_font_atlas_format), arg1, width, height, arg2)
end

function nk_font_atlas_end(arg1, tex, arg2)
    ccall((:nk_font_atlas_end, libnuklear), Cvoid, (Ptr{nk_font_atlas}, nk_handle, Ptr{nk_draw_null_texture}), arg1, tex, arg2)
end

function nk_font_find_glyph(arg1, unicode)
    ccall((:nk_font_find_glyph, libnuklear), Ptr{nk_font_glyph}, (Ptr{nk_font}, nk_rune), arg1, unicode)
end

function nk_font_atlas_cleanup(atlas)
    ccall((:nk_font_atlas_cleanup, libnuklear), Cvoid, (Ptr{nk_font_atlas},), atlas)
end

function nk_font_atlas_clear(arg1)
    ccall((:nk_font_atlas_clear, libnuklear), Cvoid, (Ptr{nk_font_atlas},), arg1)
end

function nk_buffer_init_default(arg1)
    ccall((:nk_buffer_init_default, libnuklear), Cvoid, (Ptr{nk_buffer},), arg1)
end

function nk_buffer_init(arg1, arg2, size)
    ccall((:nk_buffer_init, libnuklear), Cvoid, (Ptr{nk_buffer}, Ptr{nk_allocator}, nk_size), arg1, arg2, size)
end

function nk_buffer_init_fixed(arg1, memory, size)
    ccall((:nk_buffer_init_fixed, libnuklear), Cvoid, (Ptr{nk_buffer}, Ptr{Cvoid}, nk_size), arg1, memory, size)
end

function nk_buffer_info(arg1, arg2)
    ccall((:nk_buffer_info, libnuklear), Cvoid, (Ptr{nk_memory_status}, Ptr{nk_buffer}), arg1, arg2)
end

function nk_buffer_push(arg1, type, memory, size, align)
    ccall((:nk_buffer_push, libnuklear), Cvoid, (Ptr{nk_buffer}, nk_buffer_allocation_type, Ptr{Cvoid}, nk_size, nk_size), arg1, type, memory, size, align)
end

function nk_buffer_mark(arg1, type)
    ccall((:nk_buffer_mark, libnuklear), Cvoid, (Ptr{nk_buffer}, nk_buffer_allocation_type), arg1, type)
end

function nk_buffer_reset(arg1, type)
    ccall((:nk_buffer_reset, libnuklear), Cvoid, (Ptr{nk_buffer}, nk_buffer_allocation_type), arg1, type)
end

function nk_buffer_clear(arg1)
    ccall((:nk_buffer_clear, libnuklear), Cvoid, (Ptr{nk_buffer},), arg1)
end

function nk_buffer_free(arg1)
    ccall((:nk_buffer_free, libnuklear), Cvoid, (Ptr{nk_buffer},), arg1)
end

function nk_buffer_memory(arg1)
    ccall((:nk_buffer_memory, libnuklear), Ptr{Cvoid}, (Ptr{nk_buffer},), arg1)
end

function nk_buffer_memory_const(arg1)
    ccall((:nk_buffer_memory_const, libnuklear), Ptr{Cvoid}, (Ptr{nk_buffer},), arg1)
end

function nk_buffer_total(arg1)
    ccall((:nk_buffer_total, libnuklear), nk_size, (Ptr{nk_buffer},), arg1)
end

function nk_str_init_default(arg1)
    ccall((:nk_str_init_default, libnuklear), Cvoid, (Ptr{nk_str},), arg1)
end

function nk_str_init(arg1, arg2, size)
    ccall((:nk_str_init, libnuklear), Cvoid, (Ptr{nk_str}, Ptr{nk_allocator}, nk_size), arg1, arg2, size)
end

function nk_str_init_fixed(arg1, memory, size)
    ccall((:nk_str_init_fixed, libnuklear), Cvoid, (Ptr{nk_str}, Ptr{Cvoid}, nk_size), arg1, memory, size)
end

function nk_str_clear(arg1)
    ccall((:nk_str_clear, libnuklear), Cvoid, (Ptr{nk_str},), arg1)
end

function nk_str_free(arg1)
    ccall((:nk_str_free, libnuklear), Cvoid, (Ptr{nk_str},), arg1)
end

function nk_str_append_text_char(arg1, arg2, arg3)
    ccall((:nk_str_append_text_char, libnuklear), Cint, (Ptr{nk_str}, Cstring, Cint), arg1, arg2, arg3)
end

function nk_str_append_str_char(arg1, arg2)
    ccall((:nk_str_append_str_char, libnuklear), Cint, (Ptr{nk_str}, Cstring), arg1, arg2)
end

function nk_str_append_text_utf8(arg1, arg2, arg3)
    ccall((:nk_str_append_text_utf8, libnuklear), Cint, (Ptr{nk_str}, Cstring, Cint), arg1, arg2, arg3)
end

function nk_str_append_str_utf8(arg1, arg2)
    ccall((:nk_str_append_str_utf8, libnuklear), Cint, (Ptr{nk_str}, Cstring), arg1, arg2)
end

function nk_str_append_text_runes(arg1, arg2, arg3)
    ccall((:nk_str_append_text_runes, libnuklear), Cint, (Ptr{nk_str}, Ptr{nk_rune}, Cint), arg1, arg2, arg3)
end

function nk_str_append_str_runes(arg1, arg2)
    ccall((:nk_str_append_str_runes, libnuklear), Cint, (Ptr{nk_str}, Ptr{nk_rune}), arg1, arg2)
end

function nk_str_insert_at_char(arg1, pos, arg2, arg3)
    ccall((:nk_str_insert_at_char, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring, Cint), arg1, pos, arg2, arg3)
end

function nk_str_insert_at_rune(arg1, pos, arg2, arg3)
    ccall((:nk_str_insert_at_rune, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring, Cint), arg1, pos, arg2, arg3)
end

function nk_str_insert_text_char(arg1, pos, arg2, arg3)
    ccall((:nk_str_insert_text_char, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring, Cint), arg1, pos, arg2, arg3)
end

function nk_str_insert_str_char(arg1, pos, arg2)
    ccall((:nk_str_insert_str_char, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring), arg1, pos, arg2)
end

function nk_str_insert_text_utf8(arg1, pos, arg2, arg3)
    ccall((:nk_str_insert_text_utf8, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring, Cint), arg1, pos, arg2, arg3)
end

function nk_str_insert_str_utf8(arg1, pos, arg2)
    ccall((:nk_str_insert_str_utf8, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring), arg1, pos, arg2)
end

function nk_str_insert_text_runes(arg1, pos, arg2, arg3)
    ccall((:nk_str_insert_text_runes, libnuklear), Cint, (Ptr{nk_str}, Cint, Ptr{nk_rune}, Cint), arg1, pos, arg2, arg3)
end

function nk_str_insert_str_runes(arg1, pos, arg2)
    ccall((:nk_str_insert_str_runes, libnuklear), Cint, (Ptr{nk_str}, Cint, Ptr{nk_rune}), arg1, pos, arg2)
end

function nk_str_remove_chars(arg1, len)
    ccall((:nk_str_remove_chars, libnuklear), Cvoid, (Ptr{nk_str}, Cint), arg1, len)
end

function nk_str_remove_runes(str, len)
    ccall((:nk_str_remove_runes, libnuklear), Cvoid, (Ptr{nk_str}, Cint), str, len)
end

function nk_str_delete_chars(arg1, pos, len)
    ccall((:nk_str_delete_chars, libnuklear), Cvoid, (Ptr{nk_str}, Cint, Cint), arg1, pos, len)
end

function nk_str_delete_runes(arg1, pos, len)
    ccall((:nk_str_delete_runes, libnuklear), Cvoid, (Ptr{nk_str}, Cint, Cint), arg1, pos, len)
end

function nk_str_at_char(arg1, pos)
    ccall((:nk_str_at_char, libnuklear), Cstring, (Ptr{nk_str}, Cint), arg1, pos)
end

function nk_str_at_rune(arg1, pos, unicode, len)
    ccall((:nk_str_at_rune, libnuklear), Cstring, (Ptr{nk_str}, Cint, Ptr{nk_rune}, Ptr{Cint}), arg1, pos, unicode, len)
end

function nk_str_rune_at(arg1, pos)
    ccall((:nk_str_rune_at, libnuklear), nk_rune, (Ptr{nk_str}, Cint), arg1, pos)
end

function nk_str_at_char_const(arg1, pos)
    ccall((:nk_str_at_char_const, libnuklear), Cstring, (Ptr{nk_str}, Cint), arg1, pos)
end

function nk_str_at_const(arg1, pos, unicode, len)
    ccall((:nk_str_at_const, libnuklear), Cstring, (Ptr{nk_str}, Cint, Ptr{nk_rune}, Ptr{Cint}), arg1, pos, unicode, len)
end

function nk_str_get(arg1)
    ccall((:nk_str_get, libnuklear), Cstring, (Ptr{nk_str},), arg1)
end

function nk_str_get_const(arg1)
    ccall((:nk_str_get_const, libnuklear), Cstring, (Ptr{nk_str},), arg1)
end

function nk_str_len(arg1)
    ccall((:nk_str_len, libnuklear), Cint, (Ptr{nk_str},), arg1)
end

function nk_str_len_char(arg1)
    ccall((:nk_str_len_char, libnuklear), Cint, (Ptr{nk_str},), arg1)
end

function nk_filter_default(arg1, unicode)
    ccall((:nk_filter_default, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), arg1, unicode)
end

function nk_filter_ascii(arg1, unicode)
    ccall((:nk_filter_ascii, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), arg1, unicode)
end

function nk_filter_float(arg1, unicode)
    ccall((:nk_filter_float, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), arg1, unicode)
end

function nk_filter_decimal(arg1, unicode)
    ccall((:nk_filter_decimal, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), arg1, unicode)
end

function nk_filter_hex(arg1, unicode)
    ccall((:nk_filter_hex, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), arg1, unicode)
end

function nk_filter_oct(arg1, unicode)
    ccall((:nk_filter_oct, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), arg1, unicode)
end

function nk_filter_binary(arg1, unicode)
    ccall((:nk_filter_binary, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), arg1, unicode)
end

function nk_textedit_init_default(arg1)
    ccall((:nk_textedit_init_default, libnuklear), Cvoid, (Ptr{nk_text_edit},), arg1)
end

function nk_textedit_init(arg1, arg2, size)
    ccall((:nk_textedit_init, libnuklear), Cvoid, (Ptr{nk_text_edit}, Ptr{nk_allocator}, nk_size), arg1, arg2, size)
end

function nk_textedit_init_fixed(arg1, memory, size)
    ccall((:nk_textedit_init_fixed, libnuklear), Cvoid, (Ptr{nk_text_edit}, Ptr{Cvoid}, nk_size), arg1, memory, size)
end

function nk_textedit_free(arg1)
    ccall((:nk_textedit_free, libnuklear), Cvoid, (Ptr{nk_text_edit},), arg1)
end

function nk_textedit_text(arg1, arg2, total_len)
    ccall((:nk_textedit_text, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cstring, Cint), arg1, arg2, total_len)
end

function nk_textedit_delete(arg1, where, len)
    ccall((:nk_textedit_delete, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cint, Cint), arg1, where, len)
end

function nk_textedit_delete_selection(arg1)
    ccall((:nk_textedit_delete_selection, libnuklear), Cvoid, (Ptr{nk_text_edit},), arg1)
end

function nk_textedit_select_all(arg1)
    ccall((:nk_textedit_select_all, libnuklear), Cvoid, (Ptr{nk_text_edit},), arg1)
end

function nk_textedit_cut(arg1)
    ccall((:nk_textedit_cut, libnuklear), Cint, (Ptr{nk_text_edit},), arg1)
end

function nk_textedit_paste(arg1, arg2, len)
    ccall((:nk_textedit_paste, libnuklear), Cint, (Ptr{nk_text_edit}, Cstring, Cint), arg1, arg2, len)
end

function nk_textedit_undo(arg1)
    ccall((:nk_textedit_undo, libnuklear), Cvoid, (Ptr{nk_text_edit},), arg1)
end

function nk_textedit_redo(arg1)
    ccall((:nk_textedit_redo, libnuklear), Cvoid, (Ptr{nk_text_edit},), arg1)
end

function nk_stroke_line(b, x0, y0, x1, y1, line_thickness, arg1)
    ccall((:nk_stroke_line, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), b, x0, y0, x1, y1, line_thickness, arg1)
end

function nk_stroke_curve(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, line_thickness, arg10)
    ccall((:nk_stroke_curve, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, line_thickness, arg10)
end

function nk_stroke_rect(arg1, arg2, rounding, line_thickness, arg3)
    ccall((:nk_stroke_rect, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cfloat, Cfloat, nk_color), arg1, arg2, rounding, line_thickness, arg3)
end

function nk_stroke_circle(arg1, arg2, line_thickness, arg3)
    ccall((:nk_stroke_circle, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cfloat, nk_color), arg1, arg2, line_thickness, arg3)
end

function nk_stroke_arc(arg1, cx, cy, radius, a_min, a_max, line_thickness, arg2)
    ccall((:nk_stroke_arc, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), arg1, cx, cy, radius, a_min, a_max, line_thickness, arg2)
end

function nk_stroke_triangle(arg1, arg2, arg3, arg4, arg5, arg6, arg7, line_thichness, arg8)
    ccall((:nk_stroke_triangle, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), arg1, arg2, arg3, arg4, arg5, arg6, arg7, line_thichness, arg8)
end

function nk_stroke_polyline(arg1, points, point_count, line_thickness, col)
    ccall((:nk_stroke_polyline, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{Cfloat}, Cint, Cfloat, nk_color), arg1, points, point_count, line_thickness, col)
end

function nk_stroke_polygon(arg1, arg2, point_count, line_thickness, arg3)
    ccall((:nk_stroke_polygon, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{Cfloat}, Cint, Cfloat, nk_color), arg1, arg2, point_count, line_thickness, arg3)
end

function nk_fill_rect(arg1, arg2, rounding, arg3)
    ccall((:nk_fill_rect, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cfloat, nk_color), arg1, arg2, rounding, arg3)
end

function nk_fill_rect_multi_color(arg1, arg2, left, top, right, bottom)
    ccall((:nk_fill_rect_multi_color, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, nk_color, nk_color, nk_color, nk_color), arg1, arg2, left, top, right, bottom)
end

function nk_fill_circle(arg1, arg2, arg3)
    ccall((:nk_fill_circle, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, nk_color), arg1, arg2, arg3)
end

function nk_fill_arc(arg1, cx, cy, radius, a_min, a_max, arg2)
    ccall((:nk_fill_arc, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), arg1, cx, cy, radius, a_min, a_max, arg2)
end

function nk_fill_triangle(arg1, x0, y0, x1, y1, x2, y2, arg2)
    ccall((:nk_fill_triangle, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), arg1, x0, y0, x1, y1, x2, y2, arg2)
end

function nk_fill_polygon(arg1, arg2, point_count, arg3)
    ccall((:nk_fill_polygon, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{Cfloat}, Cint, nk_color), arg1, arg2, point_count, arg3)
end

function nk_draw_image(arg1, arg2, arg3, arg4)
    ccall((:nk_draw_image, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Ptr{nk_image}, nk_color), arg1, arg2, arg3, arg4)
end

function nk_draw_text(arg1, arg2, text, len, arg3, arg4, arg5)
    ccall((:nk_draw_text, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, Ptr{nk_user_font}, nk_color, nk_color), arg1, arg2, text, len, arg3, arg4, arg5)
end

function nk_push_scissor(arg1, arg2)
    ccall((:nk_push_scissor, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect), arg1, arg2)
end

function nk_push_custom(arg1, arg2, arg3, usr)
    ccall((:nk_push_custom, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, nk_command_custom_callback, nk_handle), arg1, arg2, arg3, usr)
end

function nk_input_has_mouse_click(arg1, arg2)
    ccall((:nk_input_has_mouse_click, libnuklear), Cint, (Ptr{nk_input}, nk_buttons), arg1, arg2)
end

function nk_input_has_mouse_click_in_rect(arg1, arg2, arg3)
    ccall((:nk_input_has_mouse_click_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect), arg1, arg2, arg3)
end

function nk_input_has_mouse_click_down_in_rect(arg1, arg2, arg3, down)
    ccall((:nk_input_has_mouse_click_down_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect, Cint), arg1, arg2, arg3, down)
end

function nk_input_is_mouse_click_in_rect(arg1, arg2, arg3)
    ccall((:nk_input_is_mouse_click_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect), arg1, arg2, arg3)
end

function nk_input_is_mouse_click_down_in_rect(i, id, b, down)
    ccall((:nk_input_is_mouse_click_down_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect, Cint), i, id, b, down)
end

function nk_input_any_mouse_click_in_rect(arg1, arg2)
    ccall((:nk_input_any_mouse_click_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_rect), arg1, arg2)
end

function nk_input_is_mouse_prev_hovering_rect(arg1, arg2)
    ccall((:nk_input_is_mouse_prev_hovering_rect, libnuklear), Cint, (Ptr{nk_input}, nk_rect), arg1, arg2)
end

function nk_input_is_mouse_hovering_rect(arg1, arg2)
    ccall((:nk_input_is_mouse_hovering_rect, libnuklear), Cint, (Ptr{nk_input}, nk_rect), arg1, arg2)
end

function nk_input_mouse_clicked(arg1, arg2, arg3)
    ccall((:nk_input_mouse_clicked, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect), arg1, arg2, arg3)
end

function nk_input_is_mouse_down(arg1, arg2)
    ccall((:nk_input_is_mouse_down, libnuklear), Cint, (Ptr{nk_input}, nk_buttons), arg1, arg2)
end

function nk_input_is_mouse_pressed(arg1, arg2)
    ccall((:nk_input_is_mouse_pressed, libnuklear), Cint, (Ptr{nk_input}, nk_buttons), arg1, arg2)
end

function nk_input_is_mouse_released(arg1, arg2)
    ccall((:nk_input_is_mouse_released, libnuklear), Cint, (Ptr{nk_input}, nk_buttons), arg1, arg2)
end

function nk_input_is_key_pressed(arg1, arg2)
    ccall((:nk_input_is_key_pressed, libnuklear), Cint, (Ptr{nk_input}, nk_keys), arg1, arg2)
end

function nk_input_is_key_released(arg1, arg2)
    ccall((:nk_input_is_key_released, libnuklear), Cint, (Ptr{nk_input}, nk_keys), arg1, arg2)
end

function nk_input_is_key_down(arg1, arg2)
    ccall((:nk_input_is_key_down, libnuklear), Cint, (Ptr{nk_input}, nk_keys), arg1, arg2)
end

function nk_draw_list_init(arg1)
    ccall((:nk_draw_list_init, libnuklear), Cvoid, (Ptr{nk_draw_list},), arg1)
end

function nk_draw_list_setup(arg1, arg2, cmds, vertices, elements, line_aa, shape_aa)
    ccall((:nk_draw_list_setup, libnuklear), Cvoid, (Ptr{nk_draw_list}, Ptr{nk_convert_config}, Ptr{nk_buffer}, Ptr{nk_buffer}, Ptr{nk_buffer}, nk_anti_aliasing, nk_anti_aliasing), arg1, arg2, cmds, vertices, elements, line_aa, shape_aa)
end

function nk__draw_list_begin(arg1, arg2)
    ccall((:nk__draw_list_begin, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_list}, Ptr{nk_buffer}), arg1, arg2)
end

function nk__draw_list_next(arg1, arg2, arg3)
    ccall((:nk__draw_list_next, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_command}, Ptr{nk_buffer}, Ptr{nk_draw_list}), arg1, arg2, arg3)
end

function nk__draw_list_end(arg1, arg2)
    ccall((:nk__draw_list_end, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_list}, Ptr{nk_buffer}), arg1, arg2)
end

function nk_draw_list_path_clear(arg1)
    ccall((:nk_draw_list_path_clear, libnuklear), Cvoid, (Ptr{nk_draw_list},), arg1)
end

function nk_draw_list_path_line_to(arg1, pos)
    ccall((:nk_draw_list_path_line_to, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2), arg1, pos)
end

function nk_draw_list_path_arc_to_fast(arg1, center, radius, a_min, a_max)
    ccall((:nk_draw_list_path_arc_to_fast, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, Cfloat, Cint, Cint), arg1, center, radius, a_min, a_max)
end

function nk_draw_list_path_arc_to(arg1, center, radius, a_min, a_max, segments)
    ccall((:nk_draw_list_path_arc_to, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, Cfloat, Cfloat, Cfloat, UInt32), arg1, center, radius, a_min, a_max, segments)
end

function nk_draw_list_path_rect_to(arg1, a, b, rounding)
    ccall((:nk_draw_list_path_rect_to, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, Cfloat), arg1, a, b, rounding)
end

function nk_draw_list_path_curve_to(arg1, p2, p3, p4, num_segments)
    ccall((:nk_draw_list_path_curve_to, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, UInt32), arg1, p2, p3, p4, num_segments)
end

function nk_draw_list_path_fill(arg1, arg2)
    ccall((:nk_draw_list_path_fill, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_color), arg1, arg2)
end

function nk_draw_list_path_stroke(arg1, arg2, closed, thickness)
    ccall((:nk_draw_list_path_stroke, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_color, nk_draw_list_stroke, Cfloat), arg1, arg2, closed, thickness)
end

function nk_draw_list_stroke_line(arg1, a, b, arg2, thickness)
    ccall((:nk_draw_list_stroke_line, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_color, Cfloat), arg1, a, b, arg2, thickness)
end

function nk_draw_list_stroke_rect(arg1, rect, arg2, rounding, thickness)
    ccall((:nk_draw_list_stroke_rect, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_rect, nk_color, Cfloat, Cfloat), arg1, rect, arg2, rounding, thickness)
end

function nk_draw_list_stroke_triangle(arg1, a, b, c, arg2, thickness)
    ccall((:nk_draw_list_stroke_triangle, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, nk_color, Cfloat), arg1, a, b, c, arg2, thickness)
end

function nk_draw_list_stroke_circle(arg1, center, radius, arg2, segs, thickness)
    ccall((:nk_draw_list_stroke_circle, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, Cfloat, nk_color, UInt32, Cfloat), arg1, center, radius, arg2, segs, thickness)
end

function nk_draw_list_stroke_curve(arg1, p0, cp0, cp1, p1, arg2, segments, thickness)
    ccall((:nk_draw_list_stroke_curve, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, nk_vec2, nk_color, UInt32, Cfloat), arg1, p0, cp0, cp1, p1, arg2, segments, thickness)
end

function nk_draw_list_stroke_poly_line(arg1, pnts, cnt, arg2, arg3, thickness, arg4)
    ccall((:nk_draw_list_stroke_poly_line, libnuklear), Cvoid, (Ptr{nk_draw_list}, Ptr{nk_vec2}, UInt32, nk_color, nk_draw_list_stroke, Cfloat, nk_anti_aliasing), arg1, pnts, cnt, arg2, arg3, thickness, arg4)
end

function nk_draw_list_fill_rect(arg1, rect, arg2, rounding)
    ccall((:nk_draw_list_fill_rect, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_rect, nk_color, Cfloat), arg1, rect, arg2, rounding)
end

function nk_draw_list_fill_rect_multi_color(arg1, rect, left, top, right, bottom)
    ccall((:nk_draw_list_fill_rect_multi_color, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_rect, nk_color, nk_color, nk_color, nk_color), arg1, rect, left, top, right, bottom)
end

function nk_draw_list_fill_triangle(arg1, a, b, c, arg2)
    ccall((:nk_draw_list_fill_triangle, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, nk_color), arg1, a, b, c, arg2)
end

function nk_draw_list_fill_circle(arg1, center, radius, col, segs)
    ccall((:nk_draw_list_fill_circle, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, Cfloat, nk_color, UInt32), arg1, center, radius, col, segs)
end

function nk_draw_list_fill_poly_convex(arg1, points, count, arg2, arg3)
    ccall((:nk_draw_list_fill_poly_convex, libnuklear), Cvoid, (Ptr{nk_draw_list}, Ptr{nk_vec2}, UInt32, nk_color, nk_anti_aliasing), arg1, points, count, arg2, arg3)
end

function nk_draw_list_add_image(arg1, texture, rect, arg2)
    ccall((:nk_draw_list_add_image, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_image, nk_rect, nk_color), arg1, texture, rect, arg2)
end

function nk_draw_list_add_text(arg1, arg2, arg3, text, len, font_height, arg4)
    ccall((:nk_draw_list_add_text, libnuklear), Cvoid, (Ptr{nk_draw_list}, Ptr{nk_user_font}, nk_rect, Cstring, Cint, Cfloat, nk_color), arg1, arg2, arg3, text, len, font_height, arg4)
end

function nk_style_item_image(img)
    ccall((:nk_style_item_image, libnuklear), nk_style_item, (nk_image,), img)
end

function nk_style_item_color(arg1)
    ccall((:nk_style_item_color, libnuklear), nk_style_item, (nk_color,), arg1)
end

function nk_style_item_hide()
    ccall((:nk_style_item_hide, libnuklear), nk_style_item, ())
end

function nk_inv_sqrt(n)
    ccall((:nk_inv_sqrt, libnuklear), Cfloat, (Cfloat,), n)
end

function nk_sqrt(x)
    ccall((:nk_sqrt, libnuklear), Cfloat, (Cfloat,), x)
end

function nk_sin(x)
    ccall((:nk_sin, libnuklear), Cfloat, (Cfloat,), x)
end

function nk_cos(x)
    ccall((:nk_cos, libnuklear), Cfloat, (Cfloat,), x)
end

function nk_round_up_pow2(v)
    ccall((:nk_round_up_pow2, libnuklear), nk_uint, (nk_uint,), v)
end

function nk_shrink_rect(r, amount)
    ccall((:nk_shrink_rect, libnuklear), nk_rect, (nk_rect, Cfloat), r, amount)
end

function nk_pad_rect(r, pad)
    ccall((:nk_pad_rect, libnuklear), nk_rect, (nk_rect, nk_vec2), r, pad)
end

function nk_unify(clip, a, x0, y0, x1, y1)
    ccall((:nk_unify, libnuklear), Cvoid, (Ptr{nk_rect}, Ptr{nk_rect}, Cfloat, Cfloat, Cfloat, Cfloat), clip, a, x0, y0, x1, y1)
end

function nk_pow(x, n)
    ccall((:nk_pow, libnuklear), Cdouble, (Cdouble, Cint), x, n)
end

function nk_ifloord(x)
    ccall((:nk_ifloord, libnuklear), Cint, (Cdouble,), x)
end

function nk_ifloorf(x)
    ccall((:nk_ifloorf, libnuklear), Cint, (Cfloat,), x)
end

function nk_iceilf(x)
    ccall((:nk_iceilf, libnuklear), Cint, (Cfloat,), x)
end

function nk_log10(n)
    ccall((:nk_log10, libnuklear), Cint, (Cdouble,), n)
end

function nk_is_lower(c)
    ccall((:nk_is_lower, libnuklear), Cint, (Cint,), c)
end

function nk_is_upper(c)
    ccall((:nk_is_upper, libnuklear), Cint, (Cint,), c)
end

function nk_to_upper(c)
    ccall((:nk_to_upper, libnuklear), Cint, (Cint,), c)
end

function nk_to_lower(c)
    ccall((:nk_to_lower, libnuklear), Cint, (Cint,), c)
end

function nk_memcopy(dst, src, n)
    ccall((:nk_memcopy, libnuklear), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, nk_size), dst, src, n)
end

function nk_memset(ptr, c0, size)
    ccall((:nk_memset, libnuklear), Cvoid, (Ptr{Cvoid}, Cint, nk_size), ptr, c0, size)
end

function nk_zero(ptr, size)
    ccall((:nk_zero, libnuklear), Cvoid, (Ptr{Cvoid}, nk_size), ptr, size)
end

function nk_itoa(s, n)
    ccall((:nk_itoa, libnuklear), Cstring, (Cstring, Clong), s, n)
end

function nk_string_float_limit(string, prec)
    ccall((:nk_string_float_limit, libnuklear), Cint, (Cstring, Cint), string, prec)
end

function nk_dtoa(s, n)
    ccall((:nk_dtoa, libnuklear), Cstring, (Cstring, Cdouble), s, n)
end

function nk_text_clamp(font, text, text_len, space, glyphs, text_width, sep_list, sep_count)
    ccall((:nk_text_clamp, libnuklear), Cint, (Ptr{nk_user_font}, Cstring, Cint, Cfloat, Ptr{Cint}, Ptr{Cfloat}, Ptr{nk_rune}, Cint), font, text, text_len, space, glyphs, text_width, sep_list, sep_count)
end

function nk_text_calculate_text_bounds(font, _begin, byte_len, row_height, remaining, out_offset, glyphs, op)
    ccall((:nk_text_calculate_text_bounds, libnuklear), nk_vec2, (Ptr{nk_user_font}, Cstring, Cint, Cfloat, Ptr{Cstring}, Ptr{nk_vec2}, Ptr{Cint}, Cint), font, _begin, byte_len, row_height, remaining, out_offset, glyphs, op)
end

function nk_file_load(path, siz, alloc)
    ccall((:nk_file_load, libnuklear), Cstring, (Cstring, Ptr{nk_size}, Ptr{nk_allocator}), path, siz, alloc)
end

function nk_malloc(unused, old, size)
    ccall((:nk_malloc, libnuklear), Ptr{Cvoid}, (nk_handle, Ptr{Cvoid}, nk_size), unused, old, size)
end

function nk_mfree(unused, ptr)
    ccall((:nk_mfree, libnuklear), Cvoid, (nk_handle, Ptr{Cvoid}), unused, ptr)
end

function nk_buffer_align(unaligned, align, alignment, type)
    ccall((:nk_buffer_align, libnuklear), Ptr{Cvoid}, (Ptr{Cvoid}, nk_size, Ptr{nk_size}, nk_buffer_allocation_type), unaligned, align, alignment, type)
end

function nk_buffer_alloc(b, type, size, align)
    ccall((:nk_buffer_alloc, libnuklear), Ptr{Cvoid}, (Ptr{nk_buffer}, nk_buffer_allocation_type, nk_size, nk_size), b, type, size, align)
end

function nk_buffer_realloc(b, capacity, size)
    ccall((:nk_buffer_realloc, libnuklear), Ptr{Cvoid}, (Ptr{nk_buffer}, nk_size, Ptr{nk_size}), b, capacity, size)
end

function nk_command_buffer_init(cb, b, clip)
    ccall((:nk_command_buffer_init, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_buffer}, nk_command_clipping), cb, b, clip)
end

function nk_command_buffer_reset(b)
    ccall((:nk_command_buffer_reset, libnuklear), Cvoid, (Ptr{nk_command_buffer},), b)
end

function nk_command_buffer_push(b, t, size)
    ccall((:nk_command_buffer_push, libnuklear), Ptr{Cvoid}, (Ptr{nk_command_buffer}, nk_command_type, nk_size), b, t, size)
end

function nk_draw_symbol(out, type, content, background, foreground, border_width, font)
    ccall((:nk_draw_symbol, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_symbol_type, nk_rect, nk_color, nk_color, Cfloat, Ptr{nk_user_font}), out, type, content, background, foreground, border_width, font)
end

function nk_start_buffer(ctx, b)
    ccall((:nk_start_buffer, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_command_buffer}), ctx, b)
end

function nk_start(ctx, win)
    ccall((:nk_start, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_start_popup(ctx, win)
    ccall((:nk_start_popup, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_finish_popup(ctx, arg1)
    ccall((:nk_finish_popup, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, arg1)
end

function nk_finish_buffer(ctx, b)
    ccall((:nk_finish_buffer, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_command_buffer}), ctx, b)
end

function nk_finish(ctx, w)
    ccall((:nk_finish, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, w)
end

function nk_build(ctx)
    ccall((:nk_build, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_textedit_clear_state(state, type, filter)
    ccall((:nk_textedit_clear_state, libnuklear), Cvoid, (Ptr{nk_text_edit}, nk_text_edit_type, nk_plugin_filter), state, type, filter)
end

function nk_textedit_click(state, x, y, font, row_height)
    ccall((:nk_textedit_click, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cfloat, Cfloat, Ptr{nk_user_font}, Cfloat), state, x, y, font, row_height)
end

function nk_textedit_drag(state, x, y, font, row_height)
    ccall((:nk_textedit_drag, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cfloat, Cfloat, Ptr{nk_user_font}, Cfloat), state, x, y, font, row_height)
end

function nk_textedit_key(state, key, shift_mod, font, row_height)
    ccall((:nk_textedit_key, libnuklear), Cvoid, (Ptr{nk_text_edit}, nk_keys, Cint, Ptr{nk_user_font}, Cfloat), state, key, shift_mod, font, row_height)
end

function nk_create_window(ctx)
    ccall((:nk_create_window, libnuklear), Ptr{Cvoid}, (Ptr{nk_context},), ctx)
end

function nk_remove_window(arg1, arg2)
    ccall((:nk_remove_window, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), arg1, arg2)
end

function nk_free_window(ctx, win)
    ccall((:nk_free_window, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_find_window(ctx, hash, name)
    ccall((:nk_find_window, libnuklear), Ptr{nk_window}, (Ptr{nk_context}, nk_hash, Cstring), ctx, hash, name)
end

function nk_insert_window(ctx, win, loc)
    ccall((:nk_insert_window, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}, nk_window_insert_location), ctx, win, loc)
end

function nk_pool_init(pool, alloc, capacity)
    ccall((:nk_pool_init, libnuklear), Cvoid, (Ptr{nk_pool}, Ptr{nk_allocator}, UInt32), pool, alloc, capacity)
end

function nk_pool_free(pool)
    ccall((:nk_pool_free, libnuklear), Cvoid, (Ptr{nk_pool},), pool)
end

function nk_pool_init_fixed(pool, memory, size)
    ccall((:nk_pool_init_fixed, libnuklear), Cvoid, (Ptr{nk_pool}, Ptr{Cvoid}, nk_size), pool, memory, size)
end

function nk_pool_alloc(pool)
    ccall((:nk_pool_alloc, libnuklear), Ptr{nk_page_element}, (Ptr{nk_pool},), pool)
end

function nk_create_page_element(ctx)
    ccall((:nk_create_page_element, libnuklear), Ptr{nk_page_element}, (Ptr{nk_context},), ctx)
end

function nk_link_page_element_into_freelist(ctx, elem)
    ccall((:nk_link_page_element_into_freelist, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_page_element}), ctx, elem)
end

function nk_free_page_element(ctx, elem)
    ccall((:nk_free_page_element, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_page_element}), ctx, elem)
end

function nk_create_table(ctx)
    ccall((:nk_create_table, libnuklear), Ptr{nk_table}, (Ptr{nk_context},), ctx)
end

function nk_remove_table(win, tbl)
    ccall((:nk_remove_table, libnuklear), Cvoid, (Ptr{nk_window}, Ptr{nk_table}), win, tbl)
end

function nk_free_table(ctx, tbl)
    ccall((:nk_free_table, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_table}), ctx, tbl)
end

function nk_push_table(win, tbl)
    ccall((:nk_push_table, libnuklear), Cvoid, (Ptr{nk_window}, Ptr{nk_table}), win, tbl)
end

function nk_add_value(ctx, win, name, value)
    ccall((:nk_add_value, libnuklear), Ptr{nk_uint}, (Ptr{nk_context}, Ptr{nk_window}, nk_hash, nk_uint), ctx, win, name, value)
end

function nk_find_value(win, name)
    ccall((:nk_find_value, libnuklear), Ptr{nk_uint}, (Ptr{nk_window}, nk_hash), win, name)
end

function nk_create_panel(ctx)
    ccall((:nk_create_panel, libnuklear), Ptr{Cvoid}, (Ptr{nk_context},), ctx)
end

function nk_free_panel(arg1, pan)
    ccall((:nk_free_panel, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_panel}), arg1, pan)
end

function nk_panel_has_header(flags, title)
    ccall((:nk_panel_has_header, libnuklear), Cint, (nk_flags, Cstring), flags, title)
end

function nk_panel_get_padding(style, type)
    ccall((:nk_panel_get_padding, libnuklear), nk_vec2, (Ptr{nk_style}, nk_panel_type), style, type)
end

function nk_panel_get_border(style, flags, type)
    ccall((:nk_panel_get_border, libnuklear), Cfloat, (Ptr{nk_style}, nk_flags, nk_panel_type), style, flags, type)
end

function nk_panel_get_border_color(style, type)
    ccall((:nk_panel_get_border_color, libnuklear), nk_color, (Ptr{nk_style}, nk_panel_type), style, type)
end

function nk_panel_is_sub(type)
    ccall((:nk_panel_is_sub, libnuklear), Cint, (nk_panel_type,), type)
end

function nk_panel_is_nonblock(type)
    ccall((:nk_panel_is_nonblock, libnuklear), Cint, (nk_panel_type,), type)
end

function nk_panel_begin(ctx, title, panel_type)
    ccall((:nk_panel_begin, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_panel_type), ctx, title, panel_type)
end

function nk_panel_end(ctx)
    ccall((:nk_panel_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_layout_row_calculate_usable_space(style, type, total_space, columns)
    ccall((:nk_layout_row_calculate_usable_space, libnuklear), Cfloat, (Ptr{nk_style}, nk_panel_type, Cfloat, Cint), style, type, total_space, columns)
end

function nk_panel_layout(ctx, win, height, cols)
    ccall((:nk_panel_layout, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}, Cfloat, Cint), ctx, win, height, cols)
end

function nk_row_layout(ctx, fmt, height, cols, width)
    ccall((:nk_row_layout, libnuklear), Cvoid, (Ptr{nk_context}, nk_layout_format, Cfloat, Cint, Cint), ctx, fmt, height, cols, width)
end

function nk_panel_alloc_row(ctx, win)
    ccall((:nk_panel_alloc_row, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_layout_widget_space(bounds, ctx, win, modify)
    ccall((:nk_layout_widget_space, libnuklear), Cvoid, (Ptr{nk_rect}, Ptr{nk_context}, Ptr{nk_window}, Cint), bounds, ctx, win, modify)
end

function nk_panel_alloc_space(bounds, ctx)
    ccall((:nk_panel_alloc_space, libnuklear), Cvoid, (Ptr{nk_rect}, Ptr{nk_context}), bounds, ctx)
end

function nk_layout_peek(bounds, ctx)
    ccall((:nk_layout_peek, libnuklear), Cvoid, (Ptr{nk_rect}, Ptr{nk_context}), bounds, ctx)
end

function nk_nonblock_begin(ctx, flags, body, header, panel_type)
    ccall((:nk_nonblock_begin, libnuklear), Cint, (Ptr{nk_context}, nk_flags, nk_rect, nk_rect, nk_panel_type), ctx, flags, body, header, panel_type)
end

function nk_widget_text(o, b, string, len, t, a, f)
    ccall((:nk_widget_text, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, Ptr{nk_text}, nk_flags, Ptr{nk_user_font}), o, b, string, len, t, a, f)
end

function nk_widget_text_wrap(o, b, string, len, t, f)
    ccall((:nk_widget_text_wrap, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, Ptr{nk_text}, Ptr{nk_user_font}), o, b, string, len, t, f)
end

function nk_button_behavior(state, r, i, behavior)
    ccall((:nk_button_behavior, libnuklear), Cint, (Ptr{nk_flags}, nk_rect, Ptr{nk_input}, nk_button_behavior), state, r, i, behavior)
end

function nk_draw_button(out, bounds, state, style)
    ccall((:nk_draw_button, libnuklear), Ptr{nk_style_item}, (Ptr{nk_command_buffer}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}), out, bounds, state, style)
end

function nk_do_button(state, out, r, style, in, behavior, content)
    ccall((:nk_do_button, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Ptr{nk_style_button}, Ptr{nk_input}, nk_button_behavior, Ptr{nk_rect}), state, out, r, style, in, behavior, content)
end

function nk_draw_button_text(out, bounds, content, state, style, txt, len, text_alignment, font)
    ccall((:nk_draw_button_text, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, Cstring, Cint, nk_flags, Ptr{nk_user_font}), out, bounds, content, state, style, txt, len, text_alignment, font)
end

function nk_do_button_text(state, out, bounds, string, len, align, behavior, style, in, font)
    ccall((:nk_do_button_text, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, nk_flags, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, string, len, align, behavior, style, in, font)
end

function nk_draw_button_symbol(out, bounds, content, state, style, type, font)
    ccall((:nk_draw_button_symbol, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, nk_symbol_type, Ptr{nk_user_font}), out, bounds, content, state, style, type, font)
end

function nk_do_button_symbol(state, out, bounds, symbol, behavior, style, in, font)
    ccall((:nk_do_button_symbol, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_symbol_type, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, symbol, behavior, style, in, font)
end

function nk_draw_button_image(out, bounds, content, state, style, img)
    ccall((:nk_draw_button_image, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, Ptr{nk_image}), out, bounds, content, state, style, img)
end

function nk_do_button_image(state, out, bounds, img, b, style, in)
    ccall((:nk_do_button_image, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_image, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_input}), state, out, bounds, img, b, style, in)
end

function nk_draw_button_text_symbol(out, bounds, label, symbol, state, style, str, len, type, font)
    ccall((:nk_draw_button_text_symbol, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, Cstring, Cint, nk_symbol_type, Ptr{nk_user_font}), out, bounds, label, symbol, state, style, str, len, type, font)
end

function nk_do_button_text_symbol(state, out, bounds, symbol, str, len, align, behavior, style, font, in)
    ccall((:nk_do_button_text_symbol, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_symbol_type, Cstring, Cint, nk_flags, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_user_font}, Ptr{nk_input}), state, out, bounds, symbol, str, len, align, behavior, style, font, in)
end

function nk_draw_button_text_image(out, bounds, label, image, state, style, str, len, font, img)
    ccall((:nk_draw_button_text_image, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, Cstring, Cint, Ptr{nk_user_font}, Ptr{nk_image}), out, bounds, label, image, state, style, str, len, font, img)
end

function nk_do_button_text_image(state, out, bounds, img, str, len, align, behavior, style, font, in)
    ccall((:nk_do_button_text_image, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_image, Cstring, Cint, nk_flags, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_user_font}, Ptr{nk_input}), state, out, bounds, img, str, len, align, behavior, style, font, in)
end

function nk_toggle_behavior(in, select, state, active)
    ccall((:nk_toggle_behavior, libnuklear), Cint, (Ptr{nk_input}, nk_rect, Ptr{nk_flags}, Cint), in, select, state, active)
end

function nk_draw_checkbox(out, state, style, active, label, selector, cursors, string, len, font)
    ccall((:nk_draw_checkbox, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_toggle}, Cint, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Cstring, Cint, Ptr{nk_user_font}), out, state, style, active, label, selector, cursors, string, len, font)
end

function nk_draw_option(out, state, style, active, label, selector, cursors, string, len, font)
    ccall((:nk_draw_option, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_toggle}, Cint, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Cstring, Cint, Ptr{nk_user_font}), out, state, style, active, label, selector, cursors, string, len, font)
end

function nk_do_toggle(state, out, r, active, str, len, type, style, in, font)
    ccall((:nk_do_toggle, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Ptr{Cint}, Cstring, Cint, nk_toggle_type, Ptr{nk_style_toggle}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, r, active, str, len, type, style, in, font)
end

function nk_progress_behavior(state, in, r, cursor, max, value, modifiable)
    ccall((:nk_progress_behavior, libnuklear), nk_size, (Ptr{nk_flags}, Ptr{nk_input}, nk_rect, nk_rect, nk_size, nk_size, Cint), state, in, r, cursor, max, value, modifiable)
end

function nk_draw_progress(out, state, style, bounds, scursor, value, max)
    ccall((:nk_draw_progress, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_progress}, Ptr{nk_rect}, Ptr{nk_rect}, nk_size, nk_size), out, state, style, bounds, scursor, value, max)
end

function nk_do_progress(state, out, bounds, value, max, modifiable, style, in)
    ccall((:nk_do_progress, libnuklear), nk_size, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_size, nk_size, Cint, Ptr{nk_style_progress}, Ptr{nk_input}), state, out, bounds, value, max, modifiable, style, in)
end

function nk_slider_behavior(state, logical_cursor, visual_cursor, in, bounds, slider_min, slider_max, slider_value, slider_step, slider_steps)
    ccall((:nk_slider_behavior, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_input}, nk_rect, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), state, logical_cursor, visual_cursor, in, bounds, slider_min, slider_max, slider_value, slider_step, slider_steps)
end

function nk_draw_slider(out, state, style, bounds, visual_cursor, min, value, max)
    ccall((:nk_draw_slider, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_slider}, Ptr{nk_rect}, Ptr{nk_rect}, Cfloat, Cfloat, Cfloat), out, state, style, bounds, visual_cursor, min, value, max)
end

function nk_do_slider(state, out, bounds, min, val, max, step, style, in, font)
    ccall((:nk_do_slider, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cfloat, Cfloat, Cfloat, Cfloat, Ptr{nk_style_slider}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, min, val, max, step, style, in, font)
end

function nk_scrollbar_behavior(state, in, has_scrolling, scroll, cursor, empty0, empty1, scroll_offset, target, scroll_step, o)
    ccall((:nk_scrollbar_behavior, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_input}, Cint, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Cfloat, Cfloat, Cfloat, nk_orientation), state, in, has_scrolling, scroll, cursor, empty0, empty1, scroll_offset, target, scroll_step, o)
end

function nk_draw_scrollbar(out, state, style, bounds, scroll)
    ccall((:nk_draw_scrollbar, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_scrollbar}, Ptr{nk_rect}, Ptr{nk_rect}), out, state, style, bounds, scroll)
end

function nk_do_scrollbarv(state, out, scroll, has_scrolling, offset, target, step, button_pixel_inc, style, in, font)
    ccall((:nk_do_scrollbarv, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Ptr{nk_style_scrollbar}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, scroll, has_scrolling, offset, target, step, button_pixel_inc, style, in, font)
end

function nk_do_scrollbarh(state, out, scroll, has_scrolling, offset, target, step, button_pixel_inc, style, in, font)
    ccall((:nk_do_scrollbarh, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Ptr{nk_style_scrollbar}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, scroll, has_scrolling, offset, target, step, button_pixel_inc, style, in, font)
end

function nk_draw_selectable(out, state, style, active, bounds, icon, img, sym, string, len, align, font)
    ccall((:nk_draw_selectable, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_selectable}, Cint, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_image}, nk_symbol_type, Cstring, Cint, nk_flags, Ptr{nk_user_font}), out, state, style, active, bounds, icon, img, sym, string, len, align, font)
end

function nk_do_selectable(state, out, bounds, str, len, align, value, style, in, font)
    ccall((:nk_do_selectable, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, nk_flags, Ptr{Cint}, Ptr{nk_style_selectable}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, str, len, align, value, style, in, font)
end

function nk_do_selectable_image(state, out, bounds, str, len, align, value, img, style, in, font)
    ccall((:nk_do_selectable_image, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, nk_flags, Ptr{Cint}, Ptr{nk_image}, Ptr{nk_style_selectable}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, str, len, align, value, img, style, in, font)
end

function nk_edit_draw_text(out, style, pos_x, pos_y, x_offset, text, byte_len, row_height, font, background, foreground, is_selected)
    ccall((:nk_edit_draw_text, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_style_edit}, Cfloat, Cfloat, Cfloat, Cstring, Cint, Cfloat, Ptr{nk_user_font}, nk_color, nk_color, Cint), out, style, pos_x, pos_y, x_offset, text, byte_len, row_height, font, background, foreground, is_selected)
end

function nk_do_edit(state, out, bounds, flags, filter, edit, style, in, font)
    ccall((:nk_do_edit, libnuklear), nk_flags, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_flags, nk_plugin_filter, Ptr{nk_text_edit}, Ptr{nk_style_edit}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, flags, filter, edit, style, in, font)
end

function nk_color_picker_behavior(state, bounds, matrix, hue_bar, alpha_bar, color, in)
    ccall((:nk_color_picker_behavior, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_colorf}, Ptr{nk_input}), state, bounds, matrix, hue_bar, alpha_bar, color, in)
end

function nk_draw_color_picker(o, matrix, hue_bar, alpha_bar, col)
    ccall((:nk_draw_color_picker, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, nk_colorf), o, matrix, hue_bar, alpha_bar, col)
end

function nk_do_color_picker(state, out, col, fmt, bounds, padding, in, font)
    ccall((:nk_do_color_picker, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, Ptr{nk_colorf}, nk_color_format, nk_rect, nk_vec2, Ptr{nk_input}, Ptr{nk_user_font}), state, out, col, fmt, bounds, padding, in, font)
end

function nk_property_variant_int(value, min_value, max_value, step)
    ccall((:nk_property_variant_int, libnuklear), nk_property_variant, (Cint, Cint, Cint, Cint), value, min_value, max_value, step)
end

function nk_property_variant_float(value, min_value, max_value, step)
    ccall((:nk_property_variant_float, libnuklear), nk_property_variant, (Cfloat, Cfloat, Cfloat, Cfloat), value, min_value, max_value, step)
end

function nk_property_variant_double(value, min_value, max_value, step)
    ccall((:nk_property_variant_double, libnuklear), nk_property_variant, (Cdouble, Cdouble, Cdouble, Cdouble), value, min_value, max_value, step)
end

function nk_drag_behavior(state, in, drag, variant, inc_per_pixel)
    ccall((:nk_drag_behavior, libnuklear), Cvoid, (Ptr{nk_flags}, Ptr{nk_input}, nk_rect, Ptr{nk_property_variant}, Cfloat), state, in, drag, variant, inc_per_pixel)
end

function nk_property_behavior(ws, in, property, label, edit, empty, state, variant, inc_per_pixel)
    ccall((:nk_property_behavior, libnuklear), Cvoid, (Ptr{nk_flags}, Ptr{nk_input}, nk_rect, nk_rect, nk_rect, nk_rect, Ptr{Cint}, Ptr{nk_property_variant}, Cfloat), ws, in, property, label, edit, empty, state, variant, inc_per_pixel)
end

function nk_draw_property(out, style, bounds, label, state, name, len, font)
    ccall((:nk_draw_property, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_style_property}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Cstring, Cint, Ptr{nk_user_font}), out, style, bounds, label, state, name, len, font)
end

function nk_do_property(ws, out, property, name, variant, inc_per_pixel, buffer, len, state, cursor, select_begin, select_end, style, filter, in, font, text_edit, behavior)
    ccall((:nk_do_property, libnuklear), Cvoid, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Ptr{nk_property_variant}, Cfloat, Cstring, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{nk_style_property}, nk_property_filter, Ptr{nk_input}, Ptr{nk_user_font}, Ptr{nk_text_edit}, nk_button_behavior), ws, out, property, name, variant, inc_per_pixel, buffer, len, state, cursor, select_begin, select_end, style, filter, in, font, text_edit, behavior)
end

function nk_property(ctx, name, variant, inc_per_pixel, filter)
    ccall((:nk_property, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Ptr{nk_property_variant}, Cfloat, nk_property_filter), ctx, name, variant, inc_per_pixel, filter)
end

function nk_inv_sqrt(n)
    ccall((:nk_inv_sqrt, libnuklear), Cfloat, (Cfloat,), n)
end

function nk_sqrt(x)
    ccall((:nk_sqrt, libnuklear), Cfloat, (Cfloat,), x)
end

function nk_sin(x)
    ccall((:nk_sin, libnuklear), Cfloat, (Cfloat,), x)
end

function nk_cos(x)
    ccall((:nk_cos, libnuklear), Cfloat, (Cfloat,), x)
end

function nk_round_up_pow2(v)
    ccall((:nk_round_up_pow2, libnuklear), nk_uint, (nk_uint,), v)
end

function nk_pow(x, n)
    ccall((:nk_pow, libnuklear), Cdouble, (Cdouble, Cint), x, n)
end

function nk_ifloord(x)
    ccall((:nk_ifloord, libnuklear), Cint, (Cdouble,), x)
end

function nk_ifloorf(x)
    ccall((:nk_ifloorf, libnuklear), Cint, (Cfloat,), x)
end

function nk_iceilf(x)
    ccall((:nk_iceilf, libnuklear), Cint, (Cfloat,), x)
end

function nk_log10(n)
    ccall((:nk_log10, libnuklear), Cint, (Cdouble,), n)
end

function nk_get_null_rect()
    ccall((:nk_get_null_rect, libnuklear), nk_rect, ())
end

function nk_rect(x, y, w, h)
    ccall((:nk_rect, libnuklear), nk_rect, (Cfloat, Cfloat, Cfloat, Cfloat), x, y, w, h)
end

function nk_recti(x, y, w, h)
    ccall((:nk_recti, libnuklear), nk_rect, (Cint, Cint, Cint, Cint), x, y, w, h)
end

function nk_recta(pos, size)
    ccall((:nk_recta, libnuklear), nk_rect, (nk_vec2, nk_vec2), pos, size)
end

function nk_rectv(r)
    ccall((:nk_rectv, libnuklear), nk_rect, (Ptr{Cfloat},), r)
end

function nk_rectiv(r)
    ccall((:nk_rectiv, libnuklear), nk_rect, (Ptr{Cint},), r)
end

function nk_rect_pos(r)
    ccall((:nk_rect_pos, libnuklear), nk_vec2, (nk_rect,), r)
end

function nk_rect_size(r)
    ccall((:nk_rect_size, libnuklear), nk_vec2, (nk_rect,), r)
end

function nk_shrink_rect(r, amount)
    ccall((:nk_shrink_rect, libnuklear), nk_rect, (nk_rect, Cfloat), r, amount)
end

function nk_pad_rect(r, pad)
    ccall((:nk_pad_rect, libnuklear), nk_rect, (nk_rect, nk_vec2), r, pad)
end

function nk_vec2(x, y)
    ccall((:nk_vec2, libnuklear), nk_vec2, (Cfloat, Cfloat), x, y)
end

function nk_vec2i(x, y)
    ccall((:nk_vec2i, libnuklear), nk_vec2, (Cint, Cint), x, y)
end

function nk_vec2v(v)
    ccall((:nk_vec2v, libnuklear), nk_vec2, (Ptr{Cfloat},), v)
end

function nk_vec2iv(v)
    ccall((:nk_vec2iv, libnuklear), nk_vec2, (Ptr{Cint},), v)
end

function nk_unify(clip, a, x0, y0, x1, y1)
    ccall((:nk_unify, libnuklear), Cvoid, (Ptr{nk_rect}, Ptr{nk_rect}, Cfloat, Cfloat, Cfloat, Cfloat), clip, a, x0, y0, x1, y1)
end

function nk_triangle_from_direction(result, r, pad_x, pad_y, direction)
    ccall((:nk_triangle_from_direction, libnuklear), Cvoid, (Ptr{nk_vec2}, nk_rect, Cfloat, Cfloat, nk_heading), result, r, pad_x, pad_y, direction)
end

function nk_str_match_here(regexp, text)
    ccall((:nk_str_match_here, libnuklear), Cint, (Cstring, Cstring), regexp, text)
end

function nk_str_match_star(c, regexp, text)
    ccall((:nk_str_match_star, libnuklear), Cint, (Cint, Cstring, Cstring), c, regexp, text)
end

function nk_is_lower(c)
    ccall((:nk_is_lower, libnuklear), Cint, (Cint,), c)
end

function nk_is_upper(c)
    ccall((:nk_is_upper, libnuklear), Cint, (Cint,), c)
end

function nk_to_upper(c)
    ccall((:nk_to_upper, libnuklear), Cint, (Cint,), c)
end

function nk_to_lower(c)
    ccall((:nk_to_lower, libnuklear), Cint, (Cint,), c)
end

function nk_memcopy(dst0, src0, length)
    ccall((:nk_memcopy, libnuklear), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, nk_size), dst0, src0, length)
end

function nk_memset(ptr, c0, size)
    ccall((:nk_memset, libnuklear), Cvoid, (Ptr{Cvoid}, Cint, nk_size), ptr, c0, size)
end

function nk_zero(ptr, size)
    ccall((:nk_zero, libnuklear), Cvoid, (Ptr{Cvoid}, nk_size), ptr, size)
end

function nk_strlen(str)
    ccall((:nk_strlen, libnuklear), Cint, (Cstring,), str)
end

function nk_strtoi(str, endptr)
    ccall((:nk_strtoi, libnuklear), Cint, (Cstring, Ptr{Cstring}), str, endptr)
end

function nk_strtod(str, endptr)
    ccall((:nk_strtod, libnuklear), Cdouble, (Cstring, Ptr{Cstring}), str, endptr)
end

function nk_strtof(str, endptr)
    ccall((:nk_strtof, libnuklear), Cfloat, (Cstring, Ptr{Cstring}), str, endptr)
end

function nk_stricmp(s1, s2)
    ccall((:nk_stricmp, libnuklear), Cint, (Cstring, Cstring), s1, s2)
end

function nk_stricmpn(s1, s2, n)
    ccall((:nk_stricmpn, libnuklear), Cint, (Cstring, Cstring, Cint), s1, s2, n)
end

function nk_str_match_here(regexp, text)
    ccall((:nk_str_match_here, libnuklear), Cint, (Cstring, Cstring), regexp, text)
end

function nk_str_match_star(c, regexp, text)
    ccall((:nk_str_match_star, libnuklear), Cint, (Cint, Cstring, Cstring), c, regexp, text)
end

function nk_strfilter(text, regexp)
    ccall((:nk_strfilter, libnuklear), Cint, (Cstring, Cstring), text, regexp)
end

function nk_strmatch_fuzzy_text(str, str_len, pattern, out_score)
    ccall((:nk_strmatch_fuzzy_text, libnuklear), Cint, (Cstring, Cint, Cstring, Ptr{Cint}), str, str_len, pattern, out_score)
end

function nk_strmatch_fuzzy_string(str, pattern, out_score)
    ccall((:nk_strmatch_fuzzy_string, libnuklear), Cint, (Cstring, Cstring, Ptr{Cint}), str, pattern, out_score)
end

function nk_string_float_limit(string, prec)
    ccall((:nk_string_float_limit, libnuklear), Cint, (Cstring, Cint), string, prec)
end

function nk_strrev_ascii(s)
    ccall((:nk_strrev_ascii, libnuklear), Cvoid, (Cstring,), s)
end

function nk_itoa(s, n)
    ccall((:nk_itoa, libnuklear), Cstring, (Cstring, Clong), s, n)
end

function nk_dtoa(s, n)
    ccall((:nk_dtoa, libnuklear), Cstring, (Cstring, Cdouble), s, n)
end

function nk_murmur_hash(key, len, seed)
    ccall((:nk_murmur_hash, libnuklear), nk_hash, (Ptr{Cvoid}, Cint, nk_hash), key, len, seed)
end

function nk_file_load(path, siz, alloc)
    ccall((:nk_file_load, libnuklear), Cstring, (Cstring, Ptr{nk_size}, Ptr{nk_allocator}), path, siz, alloc)
end

function nk_text_clamp(font, text, text_len, space, glyphs, text_width, sep_list, sep_count)
    ccall((:nk_text_clamp, libnuklear), Cint, (Ptr{nk_user_font}, Cstring, Cint, Cfloat, Ptr{Cint}, Ptr{Cfloat}, Ptr{nk_rune}, Cint), font, text, text_len, space, glyphs, text_width, sep_list, sep_count)
end

function nk_text_calculate_text_bounds(font, _begin, byte_len, row_height, remaining, out_offset, glyphs, op)
    ccall((:nk_text_calculate_text_bounds, libnuklear), nk_vec2, (Ptr{nk_user_font}, Cstring, Cint, Cfloat, Ptr{Cstring}, Ptr{nk_vec2}, Ptr{Cint}, Cint), font, _begin, byte_len, row_height, remaining, out_offset, glyphs, op)
end

function nk_parse_hex(p, length)
    ccall((:nk_parse_hex, libnuklear), Cint, (Cstring, Cint), p, length)
end

function nk_rgba(r, g, b, a)
    ccall((:nk_rgba, libnuklear), nk_color, (Cint, Cint, Cint, Cint), r, g, b, a)
end

function nk_rgb_hex(rgb)
    ccall((:nk_rgb_hex, libnuklear), nk_color, (Cstring,), rgb)
end

function nk_rgba_hex(rgb)
    ccall((:nk_rgba_hex, libnuklear), nk_color, (Cstring,), rgb)
end

function nk_color_hex_rgba(output, col)
    ccall((:nk_color_hex_rgba, libnuklear), Cvoid, (Cstring, nk_color), output, col)
end

function nk_color_hex_rgb(output, col)
    ccall((:nk_color_hex_rgb, libnuklear), Cvoid, (Cstring, nk_color), output, col)
end

function nk_rgba_iv(c)
    ccall((:nk_rgba_iv, libnuklear), nk_color, (Ptr{Cint},), c)
end

function nk_rgba_bv(c)
    ccall((:nk_rgba_bv, libnuklear), nk_color, (Ptr{nk_byte},), c)
end

function nk_rgb(r, g, b)
    ccall((:nk_rgb, libnuklear), nk_color, (Cint, Cint, Cint), r, g, b)
end

function nk_rgb_iv(c)
    ccall((:nk_rgb_iv, libnuklear), nk_color, (Ptr{Cint},), c)
end

function nk_rgb_bv(c)
    ccall((:nk_rgb_bv, libnuklear), nk_color, (Ptr{nk_byte},), c)
end

function nk_rgba_u32(in)
    ccall((:nk_rgba_u32, libnuklear), nk_color, (nk_uint,), in)
end

function nk_rgba_f(r, g, b, a)
    ccall((:nk_rgba_f, libnuklear), nk_color, (Cfloat, Cfloat, Cfloat, Cfloat), r, g, b, a)
end

function nk_rgba_fv(c)
    ccall((:nk_rgba_fv, libnuklear), nk_color, (Ptr{Cfloat},), c)
end

function nk_rgba_cf(c)
    ccall((:nk_rgba_cf, libnuklear), nk_color, (nk_colorf,), c)
end

function nk_rgb_f(r, g, b)
    ccall((:nk_rgb_f, libnuklear), nk_color, (Cfloat, Cfloat, Cfloat), r, g, b)
end

function nk_rgb_fv(c)
    ccall((:nk_rgb_fv, libnuklear), nk_color, (Ptr{Cfloat},), c)
end

function nk_rgb_cf(c)
    ccall((:nk_rgb_cf, libnuklear), nk_color, (nk_colorf,), c)
end

function nk_hsv(h, s, v)
    ccall((:nk_hsv, libnuklear), nk_color, (Cint, Cint, Cint), h, s, v)
end

function nk_hsv_iv(c)
    ccall((:nk_hsv_iv, libnuklear), nk_color, (Ptr{Cint},), c)
end

function nk_hsv_bv(c)
    ccall((:nk_hsv_bv, libnuklear), nk_color, (Ptr{nk_byte},), c)
end

function nk_hsv_f(h, s, v)
    ccall((:nk_hsv_f, libnuklear), nk_color, (Cfloat, Cfloat, Cfloat), h, s, v)
end

function nk_hsv_fv(c)
    ccall((:nk_hsv_fv, libnuklear), nk_color, (Ptr{Cfloat},), c)
end

function nk_hsva(h, s, v, a)
    ccall((:nk_hsva, libnuklear), nk_color, (Cint, Cint, Cint, Cint), h, s, v, a)
end

function nk_hsva_iv(c)
    ccall((:nk_hsva_iv, libnuklear), nk_color, (Ptr{Cint},), c)
end

function nk_hsva_bv(c)
    ccall((:nk_hsva_bv, libnuklear), nk_color, (Ptr{nk_byte},), c)
end

function nk_hsva_colorf(h, s, v, a)
    ccall((:nk_hsva_colorf, libnuklear), nk_colorf, (Cfloat, Cfloat, Cfloat, Cfloat), h, s, v, a)
end

function nk_hsva_colorfv(c)
    ccall((:nk_hsva_colorfv, libnuklear), nk_colorf, (Ptr{Cfloat},), c)
end

function nk_hsva_f(h, s, v, a)
    ccall((:nk_hsva_f, libnuklear), nk_color, (Cfloat, Cfloat, Cfloat, Cfloat), h, s, v, a)
end

function nk_hsva_fv(c)
    ccall((:nk_hsva_fv, libnuklear), nk_color, (Ptr{Cfloat},), c)
end

function nk_color_u32(in)
    ccall((:nk_color_u32, libnuklear), nk_uint, (nk_color,), in)
end

function nk_color_f(r, g, b, a, in)
    ccall((:nk_color_f, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, nk_color), r, g, b, a, in)
end

function nk_color_fv(c, in)
    ccall((:nk_color_fv, libnuklear), Cvoid, (Ptr{Cfloat}, nk_color), c, in)
end

function nk_color_cf(in)
    ccall((:nk_color_cf, libnuklear), nk_colorf, (nk_color,), in)
end

function nk_color_d(r, g, b, a, in)
    ccall((:nk_color_d, libnuklear), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, nk_color), r, g, b, a, in)
end

function nk_color_dv(c, in)
    ccall((:nk_color_dv, libnuklear), Cvoid, (Ptr{Cdouble}, nk_color), c, in)
end

function nk_color_hsv_f(out_h, out_s, out_v, in)
    ccall((:nk_color_hsv_f, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, nk_color), out_h, out_s, out_v, in)
end

function nk_color_hsv_fv(out, in)
    ccall((:nk_color_hsv_fv, libnuklear), Cvoid, (Ptr{Cfloat}, nk_color), out, in)
end

function nk_colorf_hsva_f(out_h, out_s, out_v, out_a, in)
    ccall((:nk_colorf_hsva_f, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, nk_colorf), out_h, out_s, out_v, out_a, in)
end

function nk_colorf_hsva_fv(hsva, in)
    ccall((:nk_colorf_hsva_fv, libnuklear), Cvoid, (Ptr{Cfloat}, nk_colorf), hsva, in)
end

function nk_color_hsva_f(out_h, out_s, out_v, out_a, in)
    ccall((:nk_color_hsva_f, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, nk_color), out_h, out_s, out_v, out_a, in)
end

function nk_color_hsva_fv(out, in)
    ccall((:nk_color_hsva_fv, libnuklear), Cvoid, (Ptr{Cfloat}, nk_color), out, in)
end

function nk_color_hsva_i(out_h, out_s, out_v, out_a, in)
    ccall((:nk_color_hsva_i, libnuklear), Cvoid, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, nk_color), out_h, out_s, out_v, out_a, in)
end

function nk_color_hsva_iv(out, in)
    ccall((:nk_color_hsva_iv, libnuklear), Cvoid, (Ptr{Cint}, nk_color), out, in)
end

function nk_color_hsva_bv(out, in)
    ccall((:nk_color_hsva_bv, libnuklear), Cvoid, (Ptr{nk_byte}, nk_color), out, in)
end

function nk_color_hsva_b(h, s, v, a, in)
    ccall((:nk_color_hsva_b, libnuklear), Cvoid, (Ptr{nk_byte}, Ptr{nk_byte}, Ptr{nk_byte}, Ptr{nk_byte}, nk_color), h, s, v, a, in)
end

function nk_color_hsv_i(out_h, out_s, out_v, in)
    ccall((:nk_color_hsv_i, libnuklear), Cvoid, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, nk_color), out_h, out_s, out_v, in)
end

function nk_color_hsv_b(out_h, out_s, out_v, in)
    ccall((:nk_color_hsv_b, libnuklear), Cvoid, (Ptr{nk_byte}, Ptr{nk_byte}, Ptr{nk_byte}, nk_color), out_h, out_s, out_v, in)
end

function nk_color_hsv_iv(out, in)
    ccall((:nk_color_hsv_iv, libnuklear), Cvoid, (Ptr{Cint}, nk_color), out, in)
end

function nk_color_hsv_bv(out, in)
    ccall((:nk_color_hsv_bv, libnuklear), Cvoid, (Ptr{nk_byte}, nk_color), out, in)
end

function nk_utf_validate(u, i)
    ccall((:nk_utf_validate, libnuklear), Cint, (Ptr{nk_rune}, Cint), u, i)
end

function nk_utf_decode_byte(c, i)
    ccall((:nk_utf_decode_byte, libnuklear), nk_rune, (UInt8, Ptr{Cint}), c, i)
end

function nk_utf_decode(c, u, clen)
    ccall((:nk_utf_decode, libnuklear), Cint, (Cstring, Ptr{nk_rune}, Cint), c, u, clen)
end

function nk_utf_encode_byte(u, i)
    ccall((:nk_utf_encode_byte, libnuklear), UInt8, (nk_rune, Cint), u, i)
end

function nk_utf_encode(u, c, clen)
    ccall((:nk_utf_encode, libnuklear), Cint, (nk_rune, Cstring, Cint), u, c, clen)
end

function nk_utf_len(str, len)
    ccall((:nk_utf_len, libnuklear), Cint, (Cstring, Cint), str, len)
end

function nk_utf_at(buffer, length, index, unicode, len)
    ccall((:nk_utf_at, libnuklear), Cstring, (Cstring, Cint, Cint, Ptr{nk_rune}, Ptr{Cint}), buffer, length, index, unicode, len)
end

function nk_malloc(unused, old, size)
    ccall((:nk_malloc, libnuklear), Ptr{Cvoid}, (nk_handle, Ptr{Cvoid}, nk_size), unused, old, size)
end

function nk_mfree(unused, ptr)
    ccall((:nk_mfree, libnuklear), Cvoid, (nk_handle, Ptr{Cvoid}), unused, ptr)
end

function nk_buffer_init_default(buffer)
    ccall((:nk_buffer_init_default, libnuklear), Cvoid, (Ptr{nk_buffer},), buffer)
end

function nk_buffer_init(b, a, initial_size)
    ccall((:nk_buffer_init, libnuklear), Cvoid, (Ptr{nk_buffer}, Ptr{nk_allocator}, nk_size), b, a, initial_size)
end

function nk_buffer_init_fixed(b, m, size)
    ccall((:nk_buffer_init_fixed, libnuklear), Cvoid, (Ptr{nk_buffer}, Ptr{Cvoid}, nk_size), b, m, size)
end

function nk_buffer_align(unaligned, align, alignment, type)
    ccall((:nk_buffer_align, libnuklear), Ptr{Cvoid}, (Ptr{Cvoid}, nk_size, Ptr{nk_size}, nk_buffer_allocation_type), unaligned, align, alignment, type)
end

function nk_buffer_realloc(b, capacity, size)
    ccall((:nk_buffer_realloc, libnuklear), Ptr{Cvoid}, (Ptr{nk_buffer}, nk_size, Ptr{nk_size}), b, capacity, size)
end

function nk_buffer_alloc(b, type, size, align)
    ccall((:nk_buffer_alloc, libnuklear), Ptr{Cvoid}, (Ptr{nk_buffer}, nk_buffer_allocation_type, nk_size, nk_size), b, type, size, align)
end

function nk_buffer_push(b, type, memory, size, align)
    ccall((:nk_buffer_push, libnuklear), Cvoid, (Ptr{nk_buffer}, nk_buffer_allocation_type, Ptr{Cvoid}, nk_size, nk_size), b, type, memory, size, align)
end

function nk_buffer_mark(buffer, type)
    ccall((:nk_buffer_mark, libnuklear), Cvoid, (Ptr{nk_buffer}, nk_buffer_allocation_type), buffer, type)
end

function nk_buffer_reset(buffer, type)
    ccall((:nk_buffer_reset, libnuklear), Cvoid, (Ptr{nk_buffer}, nk_buffer_allocation_type), buffer, type)
end

function nk_buffer_clear(b)
    ccall((:nk_buffer_clear, libnuklear), Cvoid, (Ptr{nk_buffer},), b)
end

function nk_buffer_free(b)
    ccall((:nk_buffer_free, libnuklear), Cvoid, (Ptr{nk_buffer},), b)
end

function nk_buffer_info(s, b)
    ccall((:nk_buffer_info, libnuklear), Cvoid, (Ptr{nk_memory_status}, Ptr{nk_buffer}), s, b)
end

function nk_buffer_memory(buffer)
    ccall((:nk_buffer_memory, libnuklear), Ptr{Cvoid}, (Ptr{nk_buffer},), buffer)
end

function nk_buffer_memory_const(buffer)
    ccall((:nk_buffer_memory_const, libnuklear), Ptr{Cvoid}, (Ptr{nk_buffer},), buffer)
end

function nk_buffer_total(buffer)
    ccall((:nk_buffer_total, libnuklear), nk_size, (Ptr{nk_buffer},), buffer)
end

function nk_str_init_default(str)
    ccall((:nk_str_init_default, libnuklear), Cvoid, (Ptr{nk_str},), str)
end

function nk_str_init(str, alloc, size)
    ccall((:nk_str_init, libnuklear), Cvoid, (Ptr{nk_str}, Ptr{nk_allocator}, nk_size), str, alloc, size)
end

function nk_str_init_fixed(str, memory, size)
    ccall((:nk_str_init_fixed, libnuklear), Cvoid, (Ptr{nk_str}, Ptr{Cvoid}, nk_size), str, memory, size)
end

function nk_str_append_text_char(s, str, len)
    ccall((:nk_str_append_text_char, libnuklear), Cint, (Ptr{nk_str}, Cstring, Cint), s, str, len)
end

function nk_str_append_str_char(s, str)
    ccall((:nk_str_append_str_char, libnuklear), Cint, (Ptr{nk_str}, Cstring), s, str)
end

function nk_str_append_text_utf8(str, text, len)
    ccall((:nk_str_append_text_utf8, libnuklear), Cint, (Ptr{nk_str}, Cstring, Cint), str, text, len)
end

function nk_str_append_str_utf8(str, text)
    ccall((:nk_str_append_str_utf8, libnuklear), Cint, (Ptr{nk_str}, Cstring), str, text)
end

function nk_str_append_text_runes(str, text, len)
    ccall((:nk_str_append_text_runes, libnuklear), Cint, (Ptr{nk_str}, Ptr{nk_rune}, Cint), str, text, len)
end

function nk_str_append_str_runes(str, runes)
    ccall((:nk_str_append_str_runes, libnuklear), Cint, (Ptr{nk_str}, Ptr{nk_rune}), str, runes)
end

function nk_str_insert_at_char(s, pos, str, len)
    ccall((:nk_str_insert_at_char, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring, Cint), s, pos, str, len)
end

function nk_str_insert_at_rune(str, pos, cstr, len)
    ccall((:nk_str_insert_at_rune, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring, Cint), str, pos, cstr, len)
end

function nk_str_insert_text_char(str, pos, text, len)
    ccall((:nk_str_insert_text_char, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring, Cint), str, pos, text, len)
end

function nk_str_insert_str_char(str, pos, text)
    ccall((:nk_str_insert_str_char, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring), str, pos, text)
end

function nk_str_insert_text_utf8(str, pos, text, len)
    ccall((:nk_str_insert_text_utf8, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring, Cint), str, pos, text, len)
end

function nk_str_insert_str_utf8(str, pos, text)
    ccall((:nk_str_insert_str_utf8, libnuklear), Cint, (Ptr{nk_str}, Cint, Cstring), str, pos, text)
end

function nk_str_insert_text_runes(str, pos, runes, len)
    ccall((:nk_str_insert_text_runes, libnuklear), Cint, (Ptr{nk_str}, Cint, Ptr{nk_rune}, Cint), str, pos, runes, len)
end

function nk_str_insert_str_runes(str, pos, runes)
    ccall((:nk_str_insert_str_runes, libnuklear), Cint, (Ptr{nk_str}, Cint, Ptr{nk_rune}), str, pos, runes)
end

function nk_str_remove_chars(s, len)
    ccall((:nk_str_remove_chars, libnuklear), Cvoid, (Ptr{nk_str}, Cint), s, len)
end

function nk_str_remove_runes(str, len)
    ccall((:nk_str_remove_runes, libnuklear), Cvoid, (Ptr{nk_str}, Cint), str, len)
end

function nk_str_delete_chars(s, pos, len)
    ccall((:nk_str_delete_chars, libnuklear), Cvoid, (Ptr{nk_str}, Cint, Cint), s, pos, len)
end

function nk_str_delete_runes(s, pos, len)
    ccall((:nk_str_delete_runes, libnuklear), Cvoid, (Ptr{nk_str}, Cint, Cint), s, pos, len)
end

function nk_str_at_char(s, pos)
    ccall((:nk_str_at_char, libnuklear), Cstring, (Ptr{nk_str}, Cint), s, pos)
end

function nk_str_at_rune(str, pos, unicode, len)
    ccall((:nk_str_at_rune, libnuklear), Cstring, (Ptr{nk_str}, Cint, Ptr{nk_rune}, Ptr{Cint}), str, pos, unicode, len)
end

function nk_str_at_char_const(s, pos)
    ccall((:nk_str_at_char_const, libnuklear), Cstring, (Ptr{nk_str}, Cint), s, pos)
end

function nk_str_at_const(str, pos, unicode, len)
    ccall((:nk_str_at_const, libnuklear), Cstring, (Ptr{nk_str}, Cint, Ptr{nk_rune}, Ptr{Cint}), str, pos, unicode, len)
end

function nk_str_rune_at(str, pos)
    ccall((:nk_str_rune_at, libnuklear), nk_rune, (Ptr{nk_str}, Cint), str, pos)
end

function nk_str_get(s)
    ccall((:nk_str_get, libnuklear), Cstring, (Ptr{nk_str},), s)
end

function nk_str_get_const(s)
    ccall((:nk_str_get_const, libnuklear), Cstring, (Ptr{nk_str},), s)
end

function nk_str_len(s)
    ccall((:nk_str_len, libnuklear), Cint, (Ptr{nk_str},), s)
end

function nk_str_len_char(s)
    ccall((:nk_str_len_char, libnuklear), Cint, (Ptr{nk_str},), s)
end

function nk_str_clear(str)
    ccall((:nk_str_clear, libnuklear), Cvoid, (Ptr{nk_str},), str)
end

function nk_str_free(str)
    ccall((:nk_str_free, libnuklear), Cvoid, (Ptr{nk_str},), str)
end

function nk_command_buffer_init(cb, b, clip)
    ccall((:nk_command_buffer_init, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_buffer}, nk_command_clipping), cb, b, clip)
end

function nk_command_buffer_reset(b)
    ccall((:nk_command_buffer_reset, libnuklear), Cvoid, (Ptr{nk_command_buffer},), b)
end

function nk_command_buffer_push(b, t, size)
    ccall((:nk_command_buffer_push, libnuklear), Ptr{Cvoid}, (Ptr{nk_command_buffer}, nk_command_type, nk_size), b, t, size)
end

function nk_push_scissor(b, r)
    ccall((:nk_push_scissor, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect), b, r)
end

function nk_stroke_line(b, x0, y0, x1, y1, line_thickness, c)
    ccall((:nk_stroke_line, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), b, x0, y0, x1, y1, line_thickness, c)
end

function nk_stroke_curve(b, ax, ay, ctrl0x, ctrl0y, ctrl1x, ctrl1y, bx, by, line_thickness, col)
    ccall((:nk_stroke_curve, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), b, ax, ay, ctrl0x, ctrl0y, ctrl1x, ctrl1y, bx, by, line_thickness, col)
end

function nk_stroke_rect(b, rect, rounding, line_thickness, c)
    ccall((:nk_stroke_rect, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cfloat, Cfloat, nk_color), b, rect, rounding, line_thickness, c)
end

function nk_fill_rect(b, rect, rounding, c)
    ccall((:nk_fill_rect, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cfloat, nk_color), b, rect, rounding, c)
end

function nk_fill_rect_multi_color(b, rect, left, top, right, bottom)
    ccall((:nk_fill_rect_multi_color, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, nk_color, nk_color, nk_color, nk_color), b, rect, left, top, right, bottom)
end

function nk_stroke_circle(b, r, line_thickness, c)
    ccall((:nk_stroke_circle, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cfloat, nk_color), b, r, line_thickness, c)
end

function nk_fill_circle(b, r, c)
    ccall((:nk_fill_circle, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, nk_color), b, r, c)
end

function nk_stroke_arc(b, cx, cy, radius, a_min, a_max, line_thickness, c)
    ccall((:nk_stroke_arc, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), b, cx, cy, radius, a_min, a_max, line_thickness, c)
end

function nk_fill_arc(b, cx, cy, radius, a_min, a_max, c)
    ccall((:nk_fill_arc, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), b, cx, cy, radius, a_min, a_max, c)
end

function nk_stroke_triangle(b, x0, y0, x1, y1, x2, y2, line_thickness, c)
    ccall((:nk_stroke_triangle, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), b, x0, y0, x1, y1, x2, y2, line_thickness, c)
end

function nk_fill_triangle(b, x0, y0, x1, y1, x2, y2, c)
    ccall((:nk_fill_triangle, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, nk_color), b, x0, y0, x1, y1, x2, y2, c)
end

function nk_stroke_polygon(b, points, point_count, line_thickness, col)
    ccall((:nk_stroke_polygon, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{Cfloat}, Cint, Cfloat, nk_color), b, points, point_count, line_thickness, col)
end

function nk_fill_polygon(b, points, point_count, col)
    ccall((:nk_fill_polygon, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{Cfloat}, Cint, nk_color), b, points, point_count, col)
end

function nk_stroke_polyline(b, points, point_count, line_thickness, col)
    ccall((:nk_stroke_polyline, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{Cfloat}, Cint, Cfloat, nk_color), b, points, point_count, line_thickness, col)
end

function nk_draw_image(b, r, img, col)
    ccall((:nk_draw_image, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Ptr{nk_image}, nk_color), b, r, img, col)
end

function nk_push_custom(b, r, cb, usr)
    ccall((:nk_push_custom, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, nk_command_custom_callback, nk_handle), b, r, cb, usr)
end

function nk_draw_text(b, r, string, length, font, bg, fg)
    ccall((:nk_draw_text, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, Ptr{nk_user_font}, nk_color, nk_color), b, r, string, length, font, bg, fg)
end

function nk_draw_list_init(list)
    ccall((:nk_draw_list_init, libnuklear), Cvoid, (Ptr{nk_draw_list},), list)
end

function nk_draw_list_setup(canvas, config, cmds, vertices, elements, line_aa, shape_aa)
    ccall((:nk_draw_list_setup, libnuklear), Cvoid, (Ptr{nk_draw_list}, Ptr{nk_convert_config}, Ptr{nk_buffer}, Ptr{nk_buffer}, Ptr{nk_buffer}, nk_anti_aliasing, nk_anti_aliasing), canvas, config, cmds, vertices, elements, line_aa, shape_aa)
end

function nk__draw_list_begin(canvas, buffer)
    ccall((:nk__draw_list_begin, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_list}, Ptr{nk_buffer}), canvas, buffer)
end

function nk__draw_list_end(canvas, buffer)
    ccall((:nk__draw_list_end, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_list}, Ptr{nk_buffer}), canvas, buffer)
end

function nk__draw_list_next(cmd, buffer, canvas)
    ccall((:nk__draw_list_next, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_command}, Ptr{nk_buffer}, Ptr{nk_draw_list}), cmd, buffer, canvas)
end

function nk_draw_list_alloc_path(list, count)
    ccall((:nk_draw_list_alloc_path, libnuklear), Ptr{nk_vec2}, (Ptr{nk_draw_list}, Cint), list, count)
end

function nk_draw_list_path_last(list)
    ccall((:nk_draw_list_path_last, libnuklear), nk_vec2, (Ptr{nk_draw_list},), list)
end

function nk_draw_list_push_command(list, clip, texture)
    ccall((:nk_draw_list_push_command, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_list}, nk_rect, nk_handle), list, clip, texture)
end

function nk_draw_list_command_last(list)
    ccall((:nk_draw_list_command_last, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_list},), list)
end

function nk_draw_list_add_clip(list, rect)
    ccall((:nk_draw_list_add_clip, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_rect), list, rect)
end

function nk_draw_list_push_image(list, texture)
    ccall((:nk_draw_list_push_image, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_handle), list, texture)
end

function nk_draw_list_alloc_vertices(list, count)
    ccall((:nk_draw_list_alloc_vertices, libnuklear), Ptr{Cvoid}, (Ptr{nk_draw_list}, nk_size), list, count)
end

function nk_draw_list_alloc_elements(list, count)
    ccall((:nk_draw_list_alloc_elements, libnuklear), Ptr{nk_draw_index}, (Ptr{nk_draw_list}, nk_size), list, count)
end

function nk_draw_vertex_layout_element_is_end_of_layout(element)
    ccall((:nk_draw_vertex_layout_element_is_end_of_layout, libnuklear), Cint, (Ptr{nk_draw_vertex_layout_element},), element)
end

function nk_draw_vertex_color(attr, vals, format)
    ccall((:nk_draw_vertex_color, libnuklear), Cvoid, (Ptr{Cvoid}, Ptr{Cfloat}, nk_draw_vertex_layout_format), attr, vals, format)
end

function nk_draw_vertex_element(dst, values, value_count, format)
    ccall((:nk_draw_vertex_element, libnuklear), Cvoid, (Ptr{Cvoid}, Ptr{Cfloat}, Cint, nk_draw_vertex_layout_format), dst, values, value_count, format)
end

function nk_draw_vertex(dst, config, pos, uv, color)
    ccall((:nk_draw_vertex, libnuklear), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{nk_convert_config}, nk_vec2, nk_vec2, nk_colorf), dst, config, pos, uv, color)
end

function nk_draw_list_stroke_poly_line(list, points, points_count, color, closed, thickness, aliasing)
    ccall((:nk_draw_list_stroke_poly_line, libnuklear), Cvoid, (Ptr{nk_draw_list}, Ptr{nk_vec2}, UInt32, nk_color, nk_draw_list_stroke, Cfloat, nk_anti_aliasing), list, points, points_count, color, closed, thickness, aliasing)
end

function nk_draw_list_fill_poly_convex(list, points, points_count, color, aliasing)
    ccall((:nk_draw_list_fill_poly_convex, libnuklear), Cvoid, (Ptr{nk_draw_list}, Ptr{nk_vec2}, UInt32, nk_color, nk_anti_aliasing), list, points, points_count, color, aliasing)
end

function nk_draw_list_path_clear(list)
    ccall((:nk_draw_list_path_clear, libnuklear), Cvoid, (Ptr{nk_draw_list},), list)
end

function nk_draw_list_path_line_to(list, pos)
    ccall((:nk_draw_list_path_line_to, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2), list, pos)
end

function nk_draw_list_path_arc_to_fast(list, center, radius, a_min, a_max)
    ccall((:nk_draw_list_path_arc_to_fast, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, Cfloat, Cint, Cint), list, center, radius, a_min, a_max)
end

function nk_draw_list_path_arc_to(list, center, radius, a_min, a_max, segments)
    ccall((:nk_draw_list_path_arc_to, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, Cfloat, Cfloat, Cfloat, UInt32), list, center, radius, a_min, a_max, segments)
end

function nk_draw_list_path_rect_to(list, a, b, rounding)
    ccall((:nk_draw_list_path_rect_to, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, Cfloat), list, a, b, rounding)
end

function nk_draw_list_path_curve_to(list, p2, p3, p4, num_segments)
    ccall((:nk_draw_list_path_curve_to, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, UInt32), list, p2, p3, p4, num_segments)
end

function nk_draw_list_path_fill(list, color)
    ccall((:nk_draw_list_path_fill, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_color), list, color)
end

function nk_draw_list_path_stroke(list, color, closed, thickness)
    ccall((:nk_draw_list_path_stroke, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_color, nk_draw_list_stroke, Cfloat), list, color, closed, thickness)
end

function nk_draw_list_stroke_line(list, a, b, col, thickness)
    ccall((:nk_draw_list_stroke_line, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_color, Cfloat), list, a, b, col, thickness)
end

function nk_draw_list_fill_rect(list, rect, col, rounding)
    ccall((:nk_draw_list_fill_rect, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_rect, nk_color, Cfloat), list, rect, col, rounding)
end

function nk_draw_list_stroke_rect(list, rect, col, rounding, thickness)
    ccall((:nk_draw_list_stroke_rect, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_rect, nk_color, Cfloat, Cfloat), list, rect, col, rounding, thickness)
end

function nk_draw_list_fill_rect_multi_color(list, rect, left, top, right, bottom)
    ccall((:nk_draw_list_fill_rect_multi_color, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_rect, nk_color, nk_color, nk_color, nk_color), list, rect, left, top, right, bottom)
end

function nk_draw_list_fill_triangle(list, a, b, c, col)
    ccall((:nk_draw_list_fill_triangle, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, nk_color), list, a, b, c, col)
end

function nk_draw_list_stroke_triangle(list, a, b, c, col, thickness)
    ccall((:nk_draw_list_stroke_triangle, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, nk_color, Cfloat), list, a, b, c, col, thickness)
end

function nk_draw_list_fill_circle(list, center, radius, col, segs)
    ccall((:nk_draw_list_fill_circle, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, Cfloat, nk_color, UInt32), list, center, radius, col, segs)
end

function nk_draw_list_stroke_circle(list, center, radius, col, segs, thickness)
    ccall((:nk_draw_list_stroke_circle, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, Cfloat, nk_color, UInt32, Cfloat), list, center, radius, col, segs, thickness)
end

function nk_draw_list_stroke_curve(list, p0, cp0, cp1, p1, col, segments, thickness)
    ccall((:nk_draw_list_stroke_curve, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, nk_vec2, nk_color, UInt32, Cfloat), list, p0, cp0, cp1, p1, col, segments, thickness)
end

function nk_draw_list_push_rect_uv(list, a, c, uva, uvc, color)
    ccall((:nk_draw_list_push_rect_uv, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_vec2, nk_vec2, nk_vec2, nk_vec2, nk_color), list, a, c, uva, uvc, color)
end

function nk_draw_list_add_image(list, texture, rect, color)
    ccall((:nk_draw_list_add_image, libnuklear), Cvoid, (Ptr{nk_draw_list}, nk_image, nk_rect, nk_color), list, texture, rect, color)
end

function nk_draw_list_add_text(list, font, rect, text, len, font_height, fg)
    ccall((:nk_draw_list_add_text, libnuklear), Cvoid, (Ptr{nk_draw_list}, Ptr{nk_user_font}, nk_rect, Cstring, Cint, Cfloat, nk_color), list, font, rect, text, len, font_height, fg)
end

function nk_convert(ctx, cmds, vertices, elements, config)
    ccall((:nk_convert, libnuklear), nk_flags, (Ptr{nk_context}, Ptr{nk_buffer}, Ptr{nk_buffer}, Ptr{nk_buffer}, Ptr{nk_convert_config}), ctx, cmds, vertices, elements, config)
end

function nk__draw_begin(ctx, buffer)
    ccall((:nk__draw_begin, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_context}, Ptr{nk_buffer}), ctx, buffer)
end

function nk__draw_end(ctx, buffer)
    ccall((:nk__draw_end, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_context}, Ptr{nk_buffer}), ctx, buffer)
end

function nk__draw_next(cmd, buffer, ctx)
    ccall((:nk__draw_next, libnuklear), Ptr{nk_draw_command}, (Ptr{nk_draw_command}, Ptr{nk_buffer}, Ptr{nk_context}), cmd, buffer, ctx)
end

function nk_rp_setup_allow_out_of_mem(context, allow_out_of_mem)
    ccall((:nk_rp_setup_allow_out_of_mem, libnuklear), Cvoid, (Ptr{nk_rp_context}, Cint), context, allow_out_of_mem)
end

function nk_rp_init_target(context, width, height, nodes, num_nodes)
    ccall((:nk_rp_init_target, libnuklear), Cvoid, (Ptr{nk_rp_context}, Cint, Cint, Ptr{nk_rp_node}, Cint), context, width, height, nodes, num_nodes)
end

function nk_rp__skyline_find_min_y(c, first, x0, width, pwaste)
    ccall((:nk_rp__skyline_find_min_y, libnuklear), Cint, (Ptr{nk_rp_context}, Ptr{nk_rp_node}, Cint, Cint, Ptr{Cint}), c, first, x0, width, pwaste)
end

function nk_rp__skyline_find_best_pos(c, width, height)
    ccall((:nk_rp__skyline_find_best_pos, libnuklear), nk_rp__findresult, (Ptr{nk_rp_context}, Cint, Cint), c, width, height)
end

function nk_rp__skyline_pack_rectangle(context, width, height)
    ccall((:nk_rp__skyline_pack_rectangle, libnuklear), nk_rp__findresult, (Ptr{nk_rp_context}, Cint, Cint), context, width, height)
end

function nk_rect_height_compare(a, b)
    ccall((:nk_rect_height_compare, libnuklear), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), a, b)
end

function nk_rect_original_order(a, b)
    ccall((:nk_rect_original_order, libnuklear), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), a, b)
end

function nk_rp_qsort(array, len, cmp)
    ccall((:nk_rp_qsort, libnuklear), Cvoid, (Ptr{nk_rp_rect}, UInt32, Ptr{Cvoid}), array, len, cmp)
end

function nk_rp_pack_rects(context, rects, num_rects)
    ccall((:nk_rp_pack_rects, libnuklear), Cvoid, (Ptr{nk_rp_context}, Ptr{nk_rp_rect}, Cint), context, rects, num_rects)
end

function nk_ttUSHORT(p)
    ccall((:nk_ttUSHORT, libnuklear), nk_ushort, (Ptr{nk_byte},), p)
end

function nk_ttSHORT(p)
    ccall((:nk_ttSHORT, libnuklear), nk_short, (Ptr{nk_byte},), p)
end

function nk_ttULONG(p)
    ccall((:nk_ttULONG, libnuklear), nk_uint, (Ptr{nk_byte},), p)
end

function nk_tt_GetGlyphShape(info, alloc, glyph_index, pvertices)
    ccall((:nk_tt_GetGlyphShape, libnuklear), Cint, (Ptr{nk_tt_fontinfo}, Ptr{nk_allocator}, Cint, Ptr{Ptr{nk_tt_vertex}}), info, alloc, glyph_index, pvertices)
end

function nk_tt__find_table(data, fontstart, tag)
    ccall((:nk_tt__find_table, libnuklear), nk_uint, (Ptr{nk_byte}, nk_uint, Cstring), data, fontstart, tag)
end

function nk_tt_InitFont(info, data2, fontstart)
    ccall((:nk_tt_InitFont, libnuklear), Cint, (Ptr{nk_tt_fontinfo}, Ptr{Cuchar}, Cint), info, data2, fontstart)
end

function nk_tt_FindGlyphIndex(info, unicode_codepoint)
    ccall((:nk_tt_FindGlyphIndex, libnuklear), Cint, (Ptr{nk_tt_fontinfo}, Cint), info, unicode_codepoint)
end

function nk_tt_setvertex(v, type, x, y, cx, cy)
    ccall((:nk_tt_setvertex, libnuklear), Cvoid, (Ptr{nk_tt_vertex}, nk_byte, nk_int, nk_int, nk_int, nk_int), v, type, x, y, cx, cy)
end

function nk_tt__GetGlyfOffset(info, glyph_index)
    ccall((:nk_tt__GetGlyfOffset, libnuklear), Cint, (Ptr{nk_tt_fontinfo}, Cint), info, glyph_index)
end

function nk_tt_GetGlyphBox(info, glyph_index, x0, y0, x1, y1)
    ccall((:nk_tt_GetGlyphBox, libnuklear), Cint, (Ptr{nk_tt_fontinfo}, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), info, glyph_index, x0, y0, x1, y1)
end

function nk_tt__close_shape(vertices, num_vertices, was_off, start_off, sx, sy, scx, scy, cx, cy)
    ccall((:nk_tt__close_shape, libnuklear), Cint, (Ptr{nk_tt_vertex}, Cint, Cint, Cint, nk_int, nk_int, nk_int, nk_int, nk_int, nk_int), vertices, num_vertices, was_off, start_off, sx, sy, scx, scy, cx, cy)
end

function nk_tt_GetGlyphShape(info, alloc, glyph_index, pvertices)
    ccall((:nk_tt_GetGlyphShape, libnuklear), Cint, (Ptr{nk_tt_fontinfo}, Ptr{nk_allocator}, Cint, Ptr{Ptr{nk_tt_vertex}}), info, alloc, glyph_index, pvertices)
end

function nk_tt_GetGlyphHMetrics(info, glyph_index, advanceWidth, leftSideBearing)
    ccall((:nk_tt_GetGlyphHMetrics, libnuklear), Cvoid, (Ptr{nk_tt_fontinfo}, Cint, Ptr{Cint}, Ptr{Cint}), info, glyph_index, advanceWidth, leftSideBearing)
end

function nk_tt_GetFontVMetrics(info, ascent, descent, lineGap)
    ccall((:nk_tt_GetFontVMetrics, libnuklear), Cvoid, (Ptr{nk_tt_fontinfo}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), info, ascent, descent, lineGap)
end

function nk_tt_ScaleForPixelHeight(info, height)
    ccall((:nk_tt_ScaleForPixelHeight, libnuklear), Cfloat, (Ptr{nk_tt_fontinfo}, Cfloat), info, height)
end

function nk_tt_ScaleForMappingEmToPixels(info, pixels)
    ccall((:nk_tt_ScaleForMappingEmToPixels, libnuklear), Cfloat, (Ptr{nk_tt_fontinfo}, Cfloat), info, pixels)
end

function nk_tt_GetGlyphBitmapBoxSubpixel(font, glyph, scale_x, scale_y, shift_x, shift_y, ix0, iy0, ix1, iy1)
    ccall((:nk_tt_GetGlyphBitmapBoxSubpixel, libnuklear), Cvoid, (Ptr{nk_tt_fontinfo}, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), font, glyph, scale_x, scale_y, shift_x, shift_y, ix0, iy0, ix1, iy1)
end

function nk_tt_GetGlyphBitmapBox(font, glyph, scale_x, scale_y, ix0, iy0, ix1, iy1)
    ccall((:nk_tt_GetGlyphBitmapBox, libnuklear), Cvoid, (Ptr{nk_tt_fontinfo}, Cint, Cfloat, Cfloat, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), font, glyph, scale_x, scale_y, ix0, iy0, ix1, iy1)
end

function nk_tt__hheap_alloc(hh, size)
    ccall((:nk_tt__hheap_alloc, libnuklear), Ptr{Cvoid}, (Ptr{nk_tt__hheap}, nk_size), hh, size)
end

function nk_tt__hheap_free(hh, p)
    ccall((:nk_tt__hheap_free, libnuklear), Cvoid, (Ptr{nk_tt__hheap}, Ptr{Cvoid}), hh, p)
end

function nk_tt__hheap_cleanup(hh)
    ccall((:nk_tt__hheap_cleanup, libnuklear), Cvoid, (Ptr{nk_tt__hheap},), hh)
end

function nk_tt__new_active(hh, e, off_x, start_point)
    ccall((:nk_tt__new_active, libnuklear), Ptr{nk_tt__active_edge}, (Ptr{nk_tt__hheap}, Ptr{nk_tt__edge}, Cint, Cfloat), hh, e, off_x, start_point)
end

function nk_tt__handle_clipped_edge(scanline, x, e, x0, y0, x1, y1)
    ccall((:nk_tt__handle_clipped_edge, libnuklear), Cvoid, (Ptr{Cfloat}, Cint, Ptr{nk_tt__active_edge}, Cfloat, Cfloat, Cfloat, Cfloat), scanline, x, e, x0, y0, x1, y1)
end

function nk_tt__fill_active_edges_new(scanline, scanline_fill, len, e, y_top)
    ccall((:nk_tt__fill_active_edges_new, libnuklear), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Cint, Ptr{nk_tt__active_edge}, Cfloat), scanline, scanline_fill, len, e, y_top)
end

function nk_tt__rasterize_sorted_edges(result, e, n, vsubsample, off_x, off_y, alloc)
    ccall((:nk_tt__rasterize_sorted_edges, libnuklear), Cvoid, (Ptr{nk_tt__bitmap}, Ptr{nk_tt__edge}, Cint, Cint, Cint, Cint, Ptr{nk_allocator}), result, e, n, vsubsample, off_x, off_y, alloc)
end

function nk_tt__sort_edges_ins_sort(p, n)
    ccall((:nk_tt__sort_edges_ins_sort, libnuklear), Cvoid, (Ptr{nk_tt__edge}, Cint), p, n)
end

function nk_tt__sort_edges_quicksort(p, n)
    ccall((:nk_tt__sort_edges_quicksort, libnuklear), Cvoid, (Ptr{nk_tt__edge}, Cint), p, n)
end

function nk_tt__sort_edges(p, n)
    ccall((:nk_tt__sort_edges, libnuklear), Cvoid, (Ptr{nk_tt__edge}, Cint), p, n)
end

function nk_tt__rasterize(result, pts, wcount, windings, scale_x, scale_y, shift_x, shift_y, off_x, off_y, invert, alloc)
    ccall((:nk_tt__rasterize, libnuklear), Cvoid, (Ptr{nk_tt__bitmap}, Ptr{nk_tt__point}, Ptr{Cint}, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Cint, Cint, Cint, Ptr{nk_allocator}), result, pts, wcount, windings, scale_x, scale_y, shift_x, shift_y, off_x, off_y, invert, alloc)
end

function nk_tt__add_point(points, n, x, y)
    ccall((:nk_tt__add_point, libnuklear), Cvoid, (Ptr{nk_tt__point}, Cint, Cfloat, Cfloat), points, n, x, y)
end

function nk_tt__tesselate_curve(points, num_points, x0, y0, x1, y1, x2, y2, objspace_flatness_squared, n)
    ccall((:nk_tt__tesselate_curve, libnuklear), Cint, (Ptr{nk_tt__point}, Ptr{Cint}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cint), points, num_points, x0, y0, x1, y1, x2, y2, objspace_flatness_squared, n)
end

function nk_tt_FlattenCurves(vertices, num_verts, objspace_flatness, contour_lengths, num_contours, alloc)
    ccall((:nk_tt_FlattenCurves, libnuklear), Ptr{nk_tt__point}, (Ptr{nk_tt_vertex}, Cint, Cfloat, Ptr{Ptr{Cint}}, Ptr{Cint}, Ptr{nk_allocator}), vertices, num_verts, objspace_flatness, contour_lengths, num_contours, alloc)
end

function nk_tt_Rasterize(result, flatness_in_pixels, vertices, num_verts, scale_x, scale_y, shift_x, shift_y, x_off, y_off, invert, alloc)
    ccall((:nk_tt_Rasterize, libnuklear), Cvoid, (Ptr{nk_tt__bitmap}, Cfloat, Ptr{nk_tt_vertex}, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Cint, Cint, Cint, Ptr{nk_allocator}), result, flatness_in_pixels, vertices, num_verts, scale_x, scale_y, shift_x, shift_y, x_off, y_off, invert, alloc)
end

function nk_tt_MakeGlyphBitmapSubpixel(info, output, out_w, out_h, out_stride, scale_x, scale_y, shift_x, shift_y, glyph, alloc)
    ccall((:nk_tt_MakeGlyphBitmapSubpixel, libnuklear), Cvoid, (Ptr{nk_tt_fontinfo}, Ptr{Cuchar}, Cint, Cint, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Cint, Ptr{nk_allocator}), info, output, out_w, out_h, out_stride, scale_x, scale_y, shift_x, shift_y, glyph, alloc)
end

function nk_tt_PackBegin(spc, pixels, pw, ph, stride_in_bytes, padding, alloc)
    ccall((:nk_tt_PackBegin, libnuklear), Cint, (Ptr{nk_tt_pack_context}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Ptr{nk_allocator}), spc, pixels, pw, ph, stride_in_bytes, padding, alloc)
end

function nk_tt_PackEnd(spc, alloc)
    ccall((:nk_tt_PackEnd, libnuklear), Cvoid, (Ptr{nk_tt_pack_context}, Ptr{nk_allocator}), spc, alloc)
end

function nk_tt_PackSetOversampling(spc, h_oversample, v_oversample)
    ccall((:nk_tt_PackSetOversampling, libnuklear), Cvoid, (Ptr{nk_tt_pack_context}, UInt32, UInt32), spc, h_oversample, v_oversample)
end

function nk_tt__h_prefilter(pixels, w, h, stride_in_bytes, kernel_width)
    ccall((:nk_tt__h_prefilter, libnuklear), Cvoid, (Ptr{Cuchar}, Cint, Cint, Cint, Cint), pixels, w, h, stride_in_bytes, kernel_width)
end

function nk_tt__v_prefilter(pixels, w, h, stride_in_bytes, kernel_width)
    ccall((:nk_tt__v_prefilter, libnuklear), Cvoid, (Ptr{Cuchar}, Cint, Cint, Cint, Cint), pixels, w, h, stride_in_bytes, kernel_width)
end

function nk_tt__oversample_shift(oversample)
    ccall((:nk_tt__oversample_shift, libnuklear), Cfloat, (Cint,), oversample)
end

function nk_tt_PackFontRangesGatherRects(spc, info, ranges, num_ranges, rects)
    ccall((:nk_tt_PackFontRangesGatherRects, libnuklear), Cint, (Ptr{nk_tt_pack_context}, Ptr{nk_tt_fontinfo}, Ptr{nk_tt_pack_range}, Cint, Ptr{nk_rp_rect}), spc, info, ranges, num_ranges, rects)
end

function nk_tt_PackFontRangesRenderIntoRects(spc, info, ranges, num_ranges, rects, alloc)
    ccall((:nk_tt_PackFontRangesRenderIntoRects, libnuklear), Cint, (Ptr{nk_tt_pack_context}, Ptr{nk_tt_fontinfo}, Ptr{nk_tt_pack_range}, Cint, Ptr{nk_rp_rect}, Ptr{nk_allocator}), spc, info, ranges, num_ranges, rects, alloc)
end

function nk_tt_GetPackedQuad(chardata, pw, ph, char_index, xpos, ypos, q, align_to_integer)
    ccall((:nk_tt_GetPackedQuad, libnuklear), Cvoid, (Ptr{nk_tt_packedchar}, Cint, Cint, Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{nk_tt_aligned_quad}, Cint), chardata, pw, ph, char_index, xpos, ypos, q, align_to_integer)
end

function nk_range_count(range)
    ccall((:nk_range_count, libnuklear), Cint, (Ptr{nk_rune},), range)
end

function nk_range_glyph_count(range, count)
    ccall((:nk_range_glyph_count, libnuklear), Cint, (Ptr{nk_rune}, Cint), range, count)
end

function nk_font_default_glyph_ranges()
    ccall((:nk_font_default_glyph_ranges, libnuklear), Ptr{nk_rune}, ())
end

function nk_font_chinese_glyph_ranges()
    ccall((:nk_font_chinese_glyph_ranges, libnuklear), Ptr{nk_rune}, ())
end

function nk_font_cyrillic_glyph_ranges()
    ccall((:nk_font_cyrillic_glyph_ranges, libnuklear), Ptr{nk_rune}, ())
end

function nk_font_korean_glyph_ranges()
    ccall((:nk_font_korean_glyph_ranges, libnuklear), Ptr{nk_rune}, ())
end

function nk_font_baker_memory(temp, glyph_count, config_list, count)
    ccall((:nk_font_baker_memory, libnuklear), Cvoid, (Ptr{nk_size}, Ptr{Cint}, Ptr{nk_font_config}, Cint), temp, glyph_count, config_list, count)
end

function nk_font_baker(memory, glyph_count, count, alloc)
    ccall((:nk_font_baker, libnuklear), Ptr{nk_font_baker}, (Ptr{Cvoid}, Cint, Cint, Ptr{nk_allocator}), memory, glyph_count, count, alloc)
end

function nk_font_bake_pack(baker, image_memory, width, height, custom, config_list, count, alloc)
    ccall((:nk_font_bake_pack, libnuklear), Cint, (Ptr{nk_font_baker}, Ptr{nk_size}, Ptr{Cint}, Ptr{Cint}, Ptr{nk_recti}, Ptr{nk_font_config}, Cint, Ptr{nk_allocator}), baker, image_memory, width, height, custom, config_list, count, alloc)
end

function nk_font_bake(baker, image_memory, width, height, glyphs, glyphs_count, config_list, font_count)
    ccall((:nk_font_bake, libnuklear), Cvoid, (Ptr{nk_font_baker}, Ptr{Cvoid}, Cint, Cint, Ptr{nk_font_glyph}, Cint, Ptr{nk_font_config}, Cint), baker, image_memory, width, height, glyphs, glyphs_count, config_list, font_count)
end

function nk_font_bake_custom_data(img_memory, img_width, img_height, img_dst, texture_data_mask, tex_width, tex_height, white, black)
    ccall((:nk_font_bake_custom_data, libnuklear), Cvoid, (Ptr{Cvoid}, Cint, Cint, nk_recti, Cstring, Cint, Cint, UInt8, UInt8), img_memory, img_width, img_height, img_dst, texture_data_mask, tex_width, tex_height, white, black)
end

function nk_font_bake_convert(out_memory, img_width, img_height, in_memory)
    ccall((:nk_font_bake_convert, libnuklear), Cvoid, (Ptr{Cvoid}, Cint, Cint, Ptr{Cvoid}), out_memory, img_width, img_height, in_memory)
end

function nk_font_text_width(handle, height, text, len)
    ccall((:nk_font_text_width, libnuklear), Cfloat, (nk_handle, Cfloat, Cstring, Cint), handle, height, text, len)
end

function nk_font_query_font_glyph(handle, height, glyph, codepoint, next_codepoint)
    ccall((:nk_font_query_font_glyph, libnuklear), Cvoid, (nk_handle, Cfloat, Ptr{nk_user_font_glyph}, nk_rune, nk_rune), handle, height, glyph, codepoint, next_codepoint)
end

function nk_font_find_glyph(font, unicode)
    ccall((:nk_font_find_glyph, libnuklear), Ptr{nk_font_glyph}, (Ptr{nk_font}, nk_rune), font, unicode)
end

function nk_font_init(font, pixel_height, fallback_codepoint, glyphs, baked_font, atlas)
    ccall((:nk_font_init, libnuklear), Cvoid, (Ptr{nk_font}, Cfloat, nk_rune, Ptr{nk_font_glyph}, Ptr{nk_baked_font}, nk_handle), font, pixel_height, fallback_codepoint, glyphs, baked_font, atlas)
end

function nk_decompress_length(input)
    ccall((:nk_decompress_length, libnuklear), UInt32, (Ptr{Cuchar},), input)
end

function nk__match(data, length)
    ccall((:nk__match, libnuklear), Cvoid, (Ptr{Cuchar}, UInt32), data, length)
end

function nk__lit(data, length)
    ccall((:nk__lit, libnuklear), Cvoid, (Ptr{Cuchar}, UInt32), data, length)
end

function nk_decompress_token(i)
    ccall((:nk_decompress_token, libnuklear), Ptr{Cuchar}, (Ptr{Cuchar},), i)
end

function nk_adler32(adler32, buffer, buflen)
    ccall((:nk_adler32, libnuklear), UInt32, (UInt32, Ptr{Cuchar}, UInt32), adler32, buffer, buflen)
end

function nk_decompress(output, i, length)
    ccall((:nk_decompress, libnuklear), UInt32, (Ptr{Cuchar}, Ptr{Cuchar}, UInt32), output, i, length)
end

function nk_decode_85_byte(c)
    ccall((:nk_decode_85_byte, libnuklear), UInt32, (UInt8,), c)
end

function nk_decode_85(dst, src)
    ccall((:nk_decode_85, libnuklear), Cvoid, (Ptr{Cuchar}, Ptr{Cuchar}), dst, src)
end

function nk_font_config(pixel_height)
    ccall((:nk_font_config, libnuklear), nk_font_config, (Cfloat,), pixel_height)
end

function nk_font_atlas_init_default(atlas)
    ccall((:nk_font_atlas_init_default, libnuklear), Cvoid, (Ptr{nk_font_atlas},), atlas)
end

function nk_font_atlas_init(atlas, alloc)
    ccall((:nk_font_atlas_init, libnuklear), Cvoid, (Ptr{nk_font_atlas}, Ptr{nk_allocator}), atlas, alloc)
end

function nk_font_atlas_init_custom(atlas, permanent, temporary)
    ccall((:nk_font_atlas_init_custom, libnuklear), Cvoid, (Ptr{nk_font_atlas}, Ptr{nk_allocator}, Ptr{nk_allocator}), atlas, permanent, temporary)
end

function nk_font_atlas_begin(atlas)
    ccall((:nk_font_atlas_begin, libnuklear), Cvoid, (Ptr{nk_font_atlas},), atlas)
end

function nk_font_atlas_add(atlas, config)
    ccall((:nk_font_atlas_add, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Ptr{nk_font_config}), atlas, config)
end

function nk_font_atlas_add_from_memory(atlas, memory, size, height, config)
    ccall((:nk_font_atlas_add_from_memory, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Ptr{Cvoid}, nk_size, Cfloat, Ptr{nk_font_config}), atlas, memory, size, height, config)
end

function nk_font_atlas_add_from_file(atlas, file_path, height, config)
    ccall((:nk_font_atlas_add_from_file, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Cstring, Cfloat, Ptr{nk_font_config}), atlas, file_path, height, config)
end

function nk_font_atlas_add_compressed(atlas, compressed_data, compressed_size, height, config)
    ccall((:nk_font_atlas_add_compressed, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Ptr{Cvoid}, nk_size, Cfloat, Ptr{nk_font_config}), atlas, compressed_data, compressed_size, height, config)
end

function nk_font_atlas_add_compressed_base85(atlas, data_base85, height, config)
    ccall((:nk_font_atlas_add_compressed_base85, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Cstring, Cfloat, Ptr{nk_font_config}), atlas, data_base85, height, config)
end

function nk_font_atlas_add_default(atlas, pixel_height, config)
    ccall((:nk_font_atlas_add_default, libnuklear), Ptr{nk_font}, (Ptr{nk_font_atlas}, Cfloat, Ptr{nk_font_config}), atlas, pixel_height, config)
end

function nk_font_atlas_bake(atlas, width, height, fmt)
    ccall((:nk_font_atlas_bake, libnuklear), Ptr{Cvoid}, (Ptr{nk_font_atlas}, Ptr{Cint}, Ptr{Cint}, nk_font_atlas_format), atlas, width, height, fmt)
end

function nk_font_atlas_end(atlas, texture, null)
    ccall((:nk_font_atlas_end, libnuklear), Cvoid, (Ptr{nk_font_atlas}, nk_handle, Ptr{nk_draw_null_texture}), atlas, texture, null)
end

function nk_font_atlas_cleanup(atlas)
    ccall((:nk_font_atlas_cleanup, libnuklear), Cvoid, (Ptr{nk_font_atlas},), atlas)
end

function nk_font_atlas_clear(atlas)
    ccall((:nk_font_atlas_clear, libnuklear), Cvoid, (Ptr{nk_font_atlas},), atlas)
end

function nk_input_begin(ctx)
    ccall((:nk_input_begin, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_input_end(ctx)
    ccall((:nk_input_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_input_motion(ctx, x, y)
    ccall((:nk_input_motion, libnuklear), Cvoid, (Ptr{nk_context}, Cint, Cint), ctx, x, y)
end

function nk_input_key(ctx, key, down)
    ccall((:nk_input_key, libnuklear), Cvoid, (Ptr{nk_context}, nk_keys, Cint), ctx, key, down)
end

function nk_input_button(ctx, id, x, y, down)
    ccall((:nk_input_button, libnuklear), Cvoid, (Ptr{nk_context}, nk_buttons, Cint, Cint, Cint), ctx, id, x, y, down)
end

function nk_input_scroll(ctx, val)
    ccall((:nk_input_scroll, libnuklear), Cvoid, (Ptr{nk_context}, nk_vec2), ctx, val)
end

function nk_input_glyph(ctx, glyph)
    ccall((:nk_input_glyph, libnuklear), Cvoid, (Ptr{nk_context}, nk_glyph), ctx, glyph)
end

function nk_input_char(ctx, c)
    ccall((:nk_input_char, libnuklear), Cvoid, (Ptr{nk_context}, UInt8), ctx, c)
end

function nk_input_unicode(ctx, unicode)
    ccall((:nk_input_unicode, libnuklear), Cvoid, (Ptr{nk_context}, nk_rune), ctx, unicode)
end

function nk_input_has_mouse_click(i, id)
    ccall((:nk_input_has_mouse_click, libnuklear), Cint, (Ptr{nk_input}, nk_buttons), i, id)
end

function nk_input_has_mouse_click_in_rect(i, id, b)
    ccall((:nk_input_has_mouse_click_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect), i, id, b)
end

function nk_input_has_mouse_click_down_in_rect(i, id, b, down)
    ccall((:nk_input_has_mouse_click_down_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect, Cint), i, id, b, down)
end

function nk_input_is_mouse_click_in_rect(i, id, b)
    ccall((:nk_input_is_mouse_click_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect), i, id, b)
end

function nk_input_is_mouse_click_down_in_rect(i, id, b, down)
    ccall((:nk_input_is_mouse_click_down_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect, Cint), i, id, b, down)
end

function nk_input_any_mouse_click_in_rect(in, b)
    ccall((:nk_input_any_mouse_click_in_rect, libnuklear), Cint, (Ptr{nk_input}, nk_rect), in, b)
end

function nk_input_is_mouse_hovering_rect(i, rect)
    ccall((:nk_input_is_mouse_hovering_rect, libnuklear), Cint, (Ptr{nk_input}, nk_rect), i, rect)
end

function nk_input_is_mouse_prev_hovering_rect(i, rect)
    ccall((:nk_input_is_mouse_prev_hovering_rect, libnuklear), Cint, (Ptr{nk_input}, nk_rect), i, rect)
end

function nk_input_mouse_clicked(i, id, rect)
    ccall((:nk_input_mouse_clicked, libnuklear), Cint, (Ptr{nk_input}, nk_buttons, nk_rect), i, id, rect)
end

function nk_input_is_mouse_down(i, id)
    ccall((:nk_input_is_mouse_down, libnuklear), Cint, (Ptr{nk_input}, nk_buttons), i, id)
end

function nk_input_is_mouse_pressed(i, id)
    ccall((:nk_input_is_mouse_pressed, libnuklear), Cint, (Ptr{nk_input}, nk_buttons), i, id)
end

function nk_input_is_mouse_released(i, id)
    ccall((:nk_input_is_mouse_released, libnuklear), Cint, (Ptr{nk_input}, nk_buttons), i, id)
end

function nk_input_is_key_pressed(i, key)
    ccall((:nk_input_is_key_pressed, libnuklear), Cint, (Ptr{nk_input}, nk_keys), i, key)
end

function nk_input_is_key_released(i, key)
    ccall((:nk_input_is_key_released, libnuklear), Cint, (Ptr{nk_input}, nk_keys), i, key)
end

function nk_input_is_key_down(i, key)
    ccall((:nk_input_is_key_down, libnuklear), Cint, (Ptr{nk_input}, nk_keys), i, key)
end

function nk_style_default(ctx)
    ccall((:nk_style_default, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_style_get_color_by_name(c)
    ccall((:nk_style_get_color_by_name, libnuklear), Cstring, (nk_style_colors,), c)
end

function nk_style_item_image(img)
    ccall((:nk_style_item_image, libnuklear), nk_style_item, (nk_image,), img)
end

function nk_style_item_color(col)
    ccall((:nk_style_item_color, libnuklear), nk_style_item, (nk_color,), col)
end

function nk_style_item_hide()
    ccall((:nk_style_item_hide, libnuklear), nk_style_item, ())
end

function nk_style_from_table(ctx, table)
    ccall((:nk_style_from_table, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_color}), ctx, table)
end

function nk_style_set_font(ctx, font)
    ccall((:nk_style_set_font, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_user_font}), ctx, font)
end

function nk_style_push_font(ctx, font)
    ccall((:nk_style_push_font, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_user_font}), ctx, font)
end

function nk_style_pop_font(ctx)
    ccall((:nk_style_pop_font, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_style_push_style_item(ctx, address, value)
    ccall((:nk_style_push_style_item, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_item}, nk_style_item), ctx, address, value)
end

function nk_style_push_float(ctx, address, value)
    ccall((:nk_style_push_float, libnuklear), Cint, (Ptr{nk_context}, Ptr{Cfloat}, Cfloat), ctx, address, value)
end

function nk_style_push_vec2(ctx, address, value)
    ccall((:nk_style_push_vec2, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_vec2}, nk_vec2), ctx, address, value)
end

function nk_style_push_flags(ctx, address, value)
    ccall((:nk_style_push_flags, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_flags}, nk_flags), ctx, address, value)
end

function nk_style_push_color(ctx, address, value)
    ccall((:nk_style_push_color, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_color}, nk_color), ctx, address, value)
end

function nk_style_pop_style_item(ctx)
    ccall((:nk_style_pop_style_item, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_style_pop_float(ctx)
    ccall((:nk_style_pop_float, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_style_pop_vec2(ctx)
    ccall((:nk_style_pop_vec2, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_style_pop_flags(ctx)
    ccall((:nk_style_pop_flags, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_style_pop_color(ctx)
    ccall((:nk_style_pop_color, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_style_set_cursor(ctx, c)
    ccall((:nk_style_set_cursor, libnuklear), Cint, (Ptr{nk_context}, nk_style_cursor), ctx, c)
end

function nk_style_show_cursor(ctx)
    ccall((:nk_style_show_cursor, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_style_hide_cursor(ctx)
    ccall((:nk_style_hide_cursor, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_style_load_cursor(ctx, cursor, c)
    ccall((:nk_style_load_cursor, libnuklear), Cvoid, (Ptr{nk_context}, nk_style_cursor, Ptr{nk_cursor}), ctx, cursor, c)
end

function nk_style_load_all_cursors(ctx, cursors)
    ccall((:nk_style_load_all_cursors, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_cursor}), ctx, cursors)
end

function nk_setup(ctx, font)
    ccall((:nk_setup, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_user_font}), ctx, font)
end

function nk_init_default(ctx, font)
    ccall((:nk_init_default, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_user_font}), ctx, font)
end

function nk_init_fixed(ctx, memory, size, font)
    ccall((:nk_init_fixed, libnuklear), Cint, (Ptr{nk_context}, Ptr{Cvoid}, nk_size, Ptr{nk_user_font}), ctx, memory, size, font)
end

function nk_init_custom(ctx, cmds, pool, font)
    ccall((:nk_init_custom, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_buffer}, Ptr{nk_buffer}, Ptr{nk_user_font}), ctx, cmds, pool, font)
end

function nk_init(ctx, alloc, font)
    ccall((:nk_init, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_allocator}, Ptr{nk_user_font}), ctx, alloc, font)
end

function nk_free(ctx)
    ccall((:nk_free, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_clear(ctx)
    ccall((:nk_clear, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_start_buffer(ctx, buffer)
    ccall((:nk_start_buffer, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_command_buffer}), ctx, buffer)
end

function nk_start(ctx, win)
    ccall((:nk_start, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_start_popup(ctx, win)
    ccall((:nk_start_popup, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_finish_popup(ctx, win)
    ccall((:nk_finish_popup, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_finish_buffer(ctx, buffer)
    ccall((:nk_finish_buffer, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_command_buffer}), ctx, buffer)
end

function nk_finish(ctx, win)
    ccall((:nk_finish, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_build(ctx)
    ccall((:nk_build, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk__begin(ctx)
    ccall((:nk__begin, libnuklear), Ptr{nk_command}, (Ptr{nk_context},), ctx)
end

function nk__next(ctx, cmd)
    ccall((:nk__next, libnuklear), Ptr{nk_command}, (Ptr{nk_context}, Ptr{nk_command}), ctx, cmd)
end

function nk_pool_init(pool, alloc, capacity)
    ccall((:nk_pool_init, libnuklear), Cvoid, (Ptr{nk_pool}, Ptr{nk_allocator}, UInt32), pool, alloc, capacity)
end

function nk_pool_free(pool)
    ccall((:nk_pool_free, libnuklear), Cvoid, (Ptr{nk_pool},), pool)
end

function nk_pool_init_fixed(pool, memory, size)
    ccall((:nk_pool_init_fixed, libnuklear), Cvoid, (Ptr{nk_pool}, Ptr{Cvoid}, nk_size), pool, memory, size)
end

function nk_pool_alloc(pool)
    ccall((:nk_pool_alloc, libnuklear), Ptr{nk_page_element}, (Ptr{nk_pool},), pool)
end

function nk_create_page_element(ctx)
    ccall((:nk_create_page_element, libnuklear), Ptr{nk_page_element}, (Ptr{nk_context},), ctx)
end

function nk_link_page_element_into_freelist(ctx, elem)
    ccall((:nk_link_page_element_into_freelist, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_page_element}), ctx, elem)
end

function nk_free_page_element(ctx, elem)
    ccall((:nk_free_page_element, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_page_element}), ctx, elem)
end

function nk_create_table(ctx)
    ccall((:nk_create_table, libnuklear), Ptr{nk_table}, (Ptr{nk_context},), ctx)
end

function nk_free_table(ctx, tbl)
    ccall((:nk_free_table, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_table}), ctx, tbl)
end

function nk_push_table(win, tbl)
    ccall((:nk_push_table, libnuklear), Cvoid, (Ptr{nk_window}, Ptr{nk_table}), win, tbl)
end

function nk_remove_table(win, tbl)
    ccall((:nk_remove_table, libnuklear), Cvoid, (Ptr{nk_window}, Ptr{nk_table}), win, tbl)
end

function nk_add_value(ctx, win, name, value)
    ccall((:nk_add_value, libnuklear), Ptr{nk_uint}, (Ptr{nk_context}, Ptr{nk_window}, nk_hash, nk_uint), ctx, win, name, value)
end

function nk_find_value(win, name)
    ccall((:nk_find_value, libnuklear), Ptr{nk_uint}, (Ptr{nk_window}, nk_hash), win, name)
end

function nk_create_panel(ctx)
    ccall((:nk_create_panel, libnuklear), Ptr{Cvoid}, (Ptr{nk_context},), ctx)
end

function nk_free_panel(ctx, pan)
    ccall((:nk_free_panel, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_panel}), ctx, pan)
end

function nk_panel_has_header(flags, title)
    ccall((:nk_panel_has_header, libnuklear), Cint, (nk_flags, Cstring), flags, title)
end

function nk_panel_get_padding(style, type)
    ccall((:nk_panel_get_padding, libnuklear), nk_vec2, (Ptr{nk_style}, nk_panel_type), style, type)
end

function nk_panel_get_border(style, flags, type)
    ccall((:nk_panel_get_border, libnuklear), Cfloat, (Ptr{nk_style}, nk_flags, nk_panel_type), style, flags, type)
end

function nk_panel_get_border_color(style, type)
    ccall((:nk_panel_get_border_color, libnuklear), nk_color, (Ptr{nk_style}, nk_panel_type), style, type)
end

function nk_panel_is_sub(type)
    ccall((:nk_panel_is_sub, libnuklear), Cint, (nk_panel_type,), type)
end

function nk_panel_is_nonblock(type)
    ccall((:nk_panel_is_nonblock, libnuklear), Cint, (nk_panel_type,), type)
end

function nk_panel_begin(ctx, title, panel_type)
    ccall((:nk_panel_begin, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_panel_type), ctx, title, panel_type)
end

function nk_panel_end(ctx)
    ccall((:nk_panel_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_create_window(ctx)
    ccall((:nk_create_window, libnuklear), Ptr{Cvoid}, (Ptr{nk_context},), ctx)
end

function nk_free_window(ctx, win)
    ccall((:nk_free_window, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_find_window(ctx, hash, name)
    ccall((:nk_find_window, libnuklear), Ptr{nk_window}, (Ptr{nk_context}, nk_hash, Cstring), ctx, hash, name)
end

function nk_insert_window(ctx, win, loc)
    ccall((:nk_insert_window, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}, nk_window_insert_location), ctx, win, loc)
end

function nk_remove_window(ctx, win)
    ccall((:nk_remove_window, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_begin(ctx, title, bounds, flags)
    ccall((:nk_begin, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_rect, nk_flags), ctx, title, bounds, flags)
end

function nk_begin_titled(ctx, name, title, bounds, flags)
    ccall((:nk_begin_titled, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cstring, nk_rect, nk_flags), ctx, name, title, bounds, flags)
end

function nk_end(ctx)
    ccall((:nk_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_window_get_bounds(ctx)
    ccall((:nk_window_get_bounds, libnuklear), nk_rect, (Ptr{nk_context},), ctx)
end

function nk_window_get_position(ctx)
    ccall((:nk_window_get_position, libnuklear), nk_vec2, (Ptr{nk_context},), ctx)
end

function nk_window_get_size(ctx)
    ccall((:nk_window_get_size, libnuklear), nk_vec2, (Ptr{nk_context},), ctx)
end

function nk_window_get_width(ctx)
    ccall((:nk_window_get_width, libnuklear), Cfloat, (Ptr{nk_context},), ctx)
end

function nk_window_get_height(ctx)
    ccall((:nk_window_get_height, libnuklear), Cfloat, (Ptr{nk_context},), ctx)
end

function nk_window_get_content_region(ctx)
    ccall((:nk_window_get_content_region, libnuklear), nk_rect, (Ptr{nk_context},), ctx)
end

function nk_window_get_content_region_min(ctx)
    ccall((:nk_window_get_content_region_min, libnuklear), nk_vec2, (Ptr{nk_context},), ctx)
end

function nk_window_get_content_region_max(ctx)
    ccall((:nk_window_get_content_region_max, libnuklear), nk_vec2, (Ptr{nk_context},), ctx)
end

function nk_window_get_content_region_size(ctx)
    ccall((:nk_window_get_content_region_size, libnuklear), nk_vec2, (Ptr{nk_context},), ctx)
end

function nk_window_get_canvas(ctx)
    ccall((:nk_window_get_canvas, libnuklear), Ptr{nk_command_buffer}, (Ptr{nk_context},), ctx)
end

function nk_window_get_panel(ctx)
    ccall((:nk_window_get_panel, libnuklear), Ptr{nk_panel}, (Ptr{nk_context},), ctx)
end

function nk_window_has_focus(ctx)
    ccall((:nk_window_has_focus, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_window_is_hovered(ctx)
    ccall((:nk_window_is_hovered, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_window_is_any_hovered(ctx)
    ccall((:nk_window_is_any_hovered, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_item_is_any_active(ctx)
    ccall((:nk_item_is_any_active, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_window_is_collapsed(ctx, name)
    ccall((:nk_window_is_collapsed, libnuklear), Cint, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_is_closed(ctx, name)
    ccall((:nk_window_is_closed, libnuklear), Cint, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_is_hidden(ctx, name)
    ccall((:nk_window_is_hidden, libnuklear), Cint, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_is_active(ctx, name)
    ccall((:nk_window_is_active, libnuklear), Cint, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_find(ctx, name)
    ccall((:nk_window_find, libnuklear), Ptr{nk_window}, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_close(ctx, name)
    ccall((:nk_window_close, libnuklear), Cvoid, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_window_set_bounds(ctx, name, bounds)
    ccall((:nk_window_set_bounds, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_rect), ctx, name, bounds)
end

function nk_window_set_position(ctx, name, pos)
    ccall((:nk_window_set_position, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_vec2), ctx, name, pos)
end

function nk_window_set_size(ctx, name, size)
    ccall((:nk_window_set_size, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_vec2), ctx, name, size)
end

function nk_window_collapse(ctx, name, c)
    ccall((:nk_window_collapse, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_collapse_states), ctx, name, c)
end

function nk_window_collapse_if(ctx, name, c, cond)
    ccall((:nk_window_collapse_if, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_collapse_states, Cint), ctx, name, c, cond)
end

function nk_window_show(ctx, name, s)
    ccall((:nk_window_show, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_show_states), ctx, name, s)
end

function nk_window_show_if(ctx, name, s, cond)
    ccall((:nk_window_show_if, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_show_states, Cint), ctx, name, s, cond)
end

function nk_window_set_focus(ctx, name)
    ccall((:nk_window_set_focus, libnuklear), Cvoid, (Ptr{nk_context}, Cstring), ctx, name)
end

function nk_popup_begin(ctx, type, title, flags, rect)
    ccall((:nk_popup_begin, libnuklear), Cint, (Ptr{nk_context}, nk_popup_type, Cstring, nk_flags, nk_rect), ctx, type, title, flags, rect)
end

function nk_nonblock_begin(ctx, flags, body, header, panel_type)
    ccall((:nk_nonblock_begin, libnuklear), Cint, (Ptr{nk_context}, nk_flags, nk_rect, nk_rect, nk_panel_type), ctx, flags, body, header, panel_type)
end

function nk_popup_close(ctx)
    ccall((:nk_popup_close, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_popup_end(ctx)
    ccall((:nk_popup_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_contextual_begin(ctx, flags, size, trigger_bounds)
    ccall((:nk_contextual_begin, libnuklear), Cint, (Ptr{nk_context}, nk_flags, nk_vec2, nk_rect), ctx, flags, size, trigger_bounds)
end

function nk_contextual_item_text(ctx, text, len, alignment)
    ccall((:nk_contextual_item_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags), ctx, text, len, alignment)
end

function nk_contextual_item_label(ctx, label, align)
    ccall((:nk_contextual_item_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags), ctx, label, align)
end

function nk_contextual_item_image_text(ctx, img, text, len, align)
    ccall((:nk_contextual_item_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags), ctx, img, text, len, align)
end

function nk_contextual_item_image_label(ctx, img, label, align)
    ccall((:nk_contextual_item_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags), ctx, img, label, align)
end

function nk_contextual_item_symbol_text(ctx, symbol, text, len, align)
    ccall((:nk_contextual_item_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags), ctx, symbol, text, len, align)
end

function nk_contextual_item_symbol_label(ctx, symbol, text, align)
    ccall((:nk_contextual_item_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags), ctx, symbol, text, align)
end

function nk_contextual_close(ctx)
    ccall((:nk_contextual_close, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_contextual_end(ctx)
    ccall((:nk_contextual_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_menubar_begin(ctx)
    ccall((:nk_menubar_begin, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_menubar_end(ctx)
    ccall((:nk_menubar_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_menu_begin(ctx, win, id, is_clicked, header, size)
    ccall((:nk_menu_begin, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_window}, Cstring, Cint, nk_rect, nk_vec2), ctx, win, id, is_clicked, header, size)
end

function nk_menu_begin_text(ctx, title, len, align, size)
    ccall((:nk_menu_begin_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, nk_vec2), ctx, title, len, align, size)
end

function nk_menu_begin_label(ctx, text, align, size)
    ccall((:nk_menu_begin_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, nk_vec2), ctx, text, align, size)
end

function nk_menu_begin_image(ctx, id, img, size)
    ccall((:nk_menu_begin_image, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_image, nk_vec2), ctx, id, img, size)
end

function nk_menu_begin_symbol(ctx, id, sym, size)
    ccall((:nk_menu_begin_symbol, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_symbol_type, nk_vec2), ctx, id, sym, size)
end

function nk_menu_begin_image_text(ctx, title, len, align, img, size)
    ccall((:nk_menu_begin_image_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, nk_image, nk_vec2), ctx, title, len, align, img, size)
end

function nk_menu_begin_image_label(ctx, title, align, img, size)
    ccall((:nk_menu_begin_image_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, nk_image, nk_vec2), ctx, title, align, img, size)
end

function nk_menu_begin_symbol_text(ctx, title, len, align, sym, size)
    ccall((:nk_menu_begin_symbol_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, nk_symbol_type, nk_vec2), ctx, title, len, align, sym, size)
end

function nk_menu_begin_symbol_label(ctx, title, align, sym, size)
    ccall((:nk_menu_begin_symbol_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, nk_symbol_type, nk_vec2), ctx, title, align, sym, size)
end

function nk_menu_item_text(ctx, title, len, align)
    ccall((:nk_menu_item_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags), ctx, title, len, align)
end

function nk_menu_item_label(ctx, label, align)
    ccall((:nk_menu_item_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags), ctx, label, align)
end

function nk_menu_item_image_label(ctx, img, label, align)
    ccall((:nk_menu_item_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags), ctx, img, label, align)
end

function nk_menu_item_image_text(ctx, img, text, len, align)
    ccall((:nk_menu_item_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags), ctx, img, text, len, align)
end

function nk_menu_item_symbol_text(ctx, sym, text, len, align)
    ccall((:nk_menu_item_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags), ctx, sym, text, len, align)
end

function nk_menu_item_symbol_label(ctx, sym, label, align)
    ccall((:nk_menu_item_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags), ctx, sym, label, align)
end

function nk_menu_close(ctx)
    ccall((:nk_menu_close, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_menu_end(ctx)
    ccall((:nk_menu_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_layout_set_min_row_height(ctx, height)
    ccall((:nk_layout_set_min_row_height, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), ctx, height)
end

function nk_layout_reset_min_row_height(ctx)
    ccall((:nk_layout_reset_min_row_height, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_layout_row_calculate_usable_space(style, type, total_space, columns)
    ccall((:nk_layout_row_calculate_usable_space, libnuklear), Cfloat, (Ptr{nk_style}, nk_panel_type, Cfloat, Cint), style, type, total_space, columns)
end

function nk_panel_layout(ctx, win, height, cols)
    ccall((:nk_panel_layout, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}, Cfloat, Cint), ctx, win, height, cols)
end

function nk_row_layout(ctx, fmt, height, cols, width)
    ccall((:nk_row_layout, libnuklear), Cvoid, (Ptr{nk_context}, nk_layout_format, Cfloat, Cint, Cint), ctx, fmt, height, cols, width)
end

function nk_layout_ratio_from_pixel(ctx, pixel_width)
    ccall((:nk_layout_ratio_from_pixel, libnuklear), Cfloat, (Ptr{nk_context}, Cfloat), ctx, pixel_width)
end

function nk_layout_row_dynamic(ctx, height, cols)
    ccall((:nk_layout_row_dynamic, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat, Cint), ctx, height, cols)
end

function nk_layout_row_static(ctx, height, item_width, cols)
    ccall((:nk_layout_row_static, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat, Cint, Cint), ctx, height, item_width, cols)
end

function nk_layout_row_begin(ctx, fmt, row_height, cols)
    ccall((:nk_layout_row_begin, libnuklear), Cvoid, (Ptr{nk_context}, nk_layout_format, Cfloat, Cint), ctx, fmt, row_height, cols)
end

function nk_layout_row_push(ctx, ratio_or_width)
    ccall((:nk_layout_row_push, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), ctx, ratio_or_width)
end

function nk_layout_row_end(ctx)
    ccall((:nk_layout_row_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_layout_row(ctx, fmt, height, cols, ratio)
    ccall((:nk_layout_row, libnuklear), Cvoid, (Ptr{nk_context}, nk_layout_format, Cfloat, Cint, Ptr{Cfloat}), ctx, fmt, height, cols, ratio)
end

function nk_layout_row_template_begin(ctx, height)
    ccall((:nk_layout_row_template_begin, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), ctx, height)
end

function nk_layout_row_template_push_dynamic(ctx)
    ccall((:nk_layout_row_template_push_dynamic, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_layout_row_template_push_variable(ctx, min_width)
    ccall((:nk_layout_row_template_push_variable, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), ctx, min_width)
end

function nk_layout_row_template_push_static(ctx, width)
    ccall((:nk_layout_row_template_push_static, libnuklear), Cvoid, (Ptr{nk_context}, Cfloat), ctx, width)
end

function nk_layout_row_template_end(ctx)
    ccall((:nk_layout_row_template_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_layout_space_begin(ctx, fmt, height, widget_count)
    ccall((:nk_layout_space_begin, libnuklear), Cvoid, (Ptr{nk_context}, nk_layout_format, Cfloat, Cint), ctx, fmt, height, widget_count)
end

function nk_layout_space_end(ctx)
    ccall((:nk_layout_space_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_layout_space_push(ctx, rect)
    ccall((:nk_layout_space_push, libnuklear), Cvoid, (Ptr{nk_context}, nk_rect), ctx, rect)
end

function nk_layout_space_bounds(ctx)
    ccall((:nk_layout_space_bounds, libnuklear), nk_rect, (Ptr{nk_context},), ctx)
end

function nk_layout_widget_bounds(ctx)
    ccall((:nk_layout_widget_bounds, libnuklear), nk_rect, (Ptr{nk_context},), ctx)
end

function nk_layout_space_to_screen(ctx, ret)
    ccall((:nk_layout_space_to_screen, libnuklear), nk_vec2, (Ptr{nk_context}, nk_vec2), ctx, ret)
end

function nk_layout_space_to_local(ctx, ret)
    ccall((:nk_layout_space_to_local, libnuklear), nk_vec2, (Ptr{nk_context}, nk_vec2), ctx, ret)
end

function nk_layout_space_rect_to_screen(ctx, ret)
    ccall((:nk_layout_space_rect_to_screen, libnuklear), nk_rect, (Ptr{nk_context}, nk_rect), ctx, ret)
end

function nk_layout_space_rect_to_local(ctx, ret)
    ccall((:nk_layout_space_rect_to_local, libnuklear), nk_rect, (Ptr{nk_context}, nk_rect), ctx, ret)
end

function nk_panel_alloc_row(ctx, win)
    ccall((:nk_panel_alloc_row, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_window}), ctx, win)
end

function nk_layout_widget_space(bounds, ctx, win, modify)
    ccall((:nk_layout_widget_space, libnuklear), Cvoid, (Ptr{nk_rect}, Ptr{nk_context}, Ptr{nk_window}, Cint), bounds, ctx, win, modify)
end

function nk_panel_alloc_space(bounds, ctx)
    ccall((:nk_panel_alloc_space, libnuklear), Cvoid, (Ptr{nk_rect}, Ptr{nk_context}), bounds, ctx)
end

function nk_layout_peek(bounds, ctx)
    ccall((:nk_layout_peek, libnuklear), Cvoid, (Ptr{nk_rect}, Ptr{nk_context}), bounds, ctx)
end

function nk_tree_state_base(ctx, type, img, title, state)
    ccall((:nk_tree_state_base, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Ptr{nk_image}, Cstring, Ptr{nk_collapse_states}), ctx, type, img, title, state)
end

function nk_tree_base(ctx, type, img, title, initial_state, hash, len, line)
    ccall((:nk_tree_base, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Ptr{nk_image}, Cstring, nk_collapse_states, Cstring, Cint, Cint), ctx, type, img, title, initial_state, hash, len, line)
end

function nk_tree_state_push(ctx, type, title, state)
    ccall((:nk_tree_state_push, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Cstring, Ptr{nk_collapse_states}), ctx, type, title, state)
end

function nk_tree_state_image_push(ctx, type, img, title, state)
    ccall((:nk_tree_state_image_push, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, nk_image, Cstring, Ptr{nk_collapse_states}), ctx, type, img, title, state)
end

function nk_tree_state_pop(ctx)
    ccall((:nk_tree_state_pop, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_tree_push_hashed(ctx, type, title, initial_state, hash, len, line)
    ccall((:nk_tree_push_hashed, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Cstring, nk_collapse_states, Cstring, Cint, Cint), ctx, type, title, initial_state, hash, len, line)
end

function nk_tree_image_push_hashed(ctx, type, img, title, initial_state, hash, len, seed)
    ccall((:nk_tree_image_push_hashed, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, nk_image, Cstring, nk_collapse_states, Cstring, Cint, Cint), ctx, type, img, title, initial_state, hash, len, seed)
end

function nk_tree_pop(ctx)
    ccall((:nk_tree_pop, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_tree_element_image_push_hashed_base(ctx, type, img, title, title_len, state, selected)
    ccall((:nk_tree_element_image_push_hashed_base, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Ptr{nk_image}, Cstring, Cint, Ptr{nk_collapse_states}, Ptr{Cint}), ctx, type, img, title, title_len, state, selected)
end

function nk_tree_element_base(ctx, type, img, title, initial_state, selected, hash, len, line)
    ccall((:nk_tree_element_base, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Ptr{nk_image}, Cstring, nk_collapse_states, Ptr{Cint}, Cstring, Cint, Cint), ctx, type, img, title, initial_state, selected, hash, len, line)
end

function nk_tree_element_push_hashed(ctx, type, title, initial_state, selected, hash, len, seed)
    ccall((:nk_tree_element_push_hashed, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, Cstring, nk_collapse_states, Ptr{Cint}, Cstring, Cint, Cint), ctx, type, title, initial_state, selected, hash, len, seed)
end

function nk_tree_element_image_push_hashed(ctx, type, img, title, initial_state, selected, hash, len, seed)
    ccall((:nk_tree_element_image_push_hashed, libnuklear), Cint, (Ptr{nk_context}, nk_tree_type, nk_image, Cstring, nk_collapse_states, Ptr{Cint}, Cstring, Cint, Cint), ctx, type, img, title, initial_state, selected, hash, len, seed)
end

function nk_tree_element_pop(ctx)
    ccall((:nk_tree_element_pop, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_group_scrolled_offset_begin(ctx, x_offset, y_offset, title, flags)
    ccall((:nk_group_scrolled_offset_begin, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_uint}, Ptr{nk_uint}, Cstring, nk_flags), ctx, x_offset, y_offset, title, flags)
end

function nk_group_scrolled_end(ctx)
    ccall((:nk_group_scrolled_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_group_scrolled_begin(ctx, scroll, title, flags)
    ccall((:nk_group_scrolled_begin, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_scroll}, Cstring, nk_flags), ctx, scroll, title, flags)
end

function nk_group_begin_titled(ctx, id, title, flags)
    ccall((:nk_group_begin_titled, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cstring, nk_flags), ctx, id, title, flags)
end

function nk_group_begin(ctx, title, flags)
    ccall((:nk_group_begin, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags), ctx, title, flags)
end

function nk_group_end(ctx)
    ccall((:nk_group_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_list_view_begin(ctx, view, title, flags, row_height, row_count)
    ccall((:nk_list_view_begin, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_list_view}, Cstring, nk_flags, Cint, Cint), ctx, view, title, flags, row_height, row_count)
end

function nk_list_view_end(view)
    ccall((:nk_list_view_end, libnuklear), Cvoid, (Ptr{nk_list_view},), view)
end

function nk_widget_bounds(ctx)
    ccall((:nk_widget_bounds, libnuklear), nk_rect, (Ptr{nk_context},), ctx)
end

function nk_widget_position(ctx)
    ccall((:nk_widget_position, libnuklear), nk_vec2, (Ptr{nk_context},), ctx)
end

function nk_widget_size(ctx)
    ccall((:nk_widget_size, libnuklear), nk_vec2, (Ptr{nk_context},), ctx)
end

function nk_widget_width(ctx)
    ccall((:nk_widget_width, libnuklear), Cfloat, (Ptr{nk_context},), ctx)
end

function nk_widget_height(ctx)
    ccall((:nk_widget_height, libnuklear), Cfloat, (Ptr{nk_context},), ctx)
end

function nk_widget_is_hovered(ctx)
    ccall((:nk_widget_is_hovered, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_widget_is_mouse_clicked(ctx, btn)
    ccall((:nk_widget_is_mouse_clicked, libnuklear), Cint, (Ptr{nk_context}, nk_buttons), ctx, btn)
end

function nk_widget_has_mouse_click_down(ctx, btn, down)
    ccall((:nk_widget_has_mouse_click_down, libnuklear), Cint, (Ptr{nk_context}, nk_buttons, Cint), ctx, btn, down)
end

function nk_widget(bounds, ctx)
    ccall((:nk_widget, libnuklear), nk_widget_layout_states, (Ptr{nk_rect}, Ptr{nk_context}), bounds, ctx)
end

function nk_widget_fitting(bounds, ctx, item_padding)
    ccall((:nk_widget_fitting, libnuklear), nk_widget_layout_states, (Ptr{nk_rect}, Ptr{nk_context}, nk_vec2), bounds, ctx, item_padding)
end

function nk_spacing(ctx, cols)
    ccall((:nk_spacing, libnuklear), Cvoid, (Ptr{nk_context}, Cint), ctx, cols)
end

function nk_widget_text(o, b, string, len, t, a, f)
    ccall((:nk_widget_text, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, Ptr{nk_text}, nk_flags, Ptr{nk_user_font}), o, b, string, len, t, a, f)
end

function nk_widget_text_wrap(o, b, string, len, t, f)
    ccall((:nk_widget_text_wrap, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, Ptr{nk_text}, Ptr{nk_user_font}), o, b, string, len, t, f)
end

function nk_text_colored(ctx, str, len, alignment, color)
    ccall((:nk_text_colored, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, nk_flags, nk_color), ctx, str, len, alignment, color)
end

function nk_text_wrap_colored(ctx, str, len, color)
    ccall((:nk_text_wrap_colored, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, nk_color), ctx, str, len, color)
end

function nk_text(ctx, str, len, alignment)
    ccall((:nk_text, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, nk_flags), ctx, str, len, alignment)
end

function nk_text_wrap(ctx, str, len)
    ccall((:nk_text_wrap, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint), ctx, str, len)
end

function nk_label(ctx, str, alignment)
    ccall((:nk_label, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_flags), ctx, str, alignment)
end

function nk_label_colored(ctx, str, align, color)
    ccall((:nk_label_colored, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_flags, nk_color), ctx, str, align, color)
end

function nk_label_wrap(ctx, str)
    ccall((:nk_label_wrap, libnuklear), Cvoid, (Ptr{nk_context}, Cstring), ctx, str)
end

function nk_label_colored_wrap(ctx, str, color)
    ccall((:nk_label_colored_wrap, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, nk_color), ctx, str, color)
end

function nk_handle_ptr(ptr)
    ccall((:nk_handle_ptr, libnuklear), nk_handle, (Ptr{Cvoid},), ptr)
end

function nk_handle_id(id)
    ccall((:nk_handle_id, libnuklear), nk_handle, (Cint,), id)
end

function nk_subimage_ptr(ptr, w, h, r)
    ccall((:nk_subimage_ptr, libnuklear), nk_image, (Ptr{Cvoid}, UInt16, UInt16, nk_rect), ptr, w, h, r)
end

function nk_subimage_id(id, w, h, r)
    ccall((:nk_subimage_id, libnuklear), nk_image, (Cint, UInt16, UInt16, nk_rect), id, w, h, r)
end

function nk_subimage_handle(handle, w, h, r)
    ccall((:nk_subimage_handle, libnuklear), nk_image, (nk_handle, UInt16, UInt16, nk_rect), handle, w, h, r)
end

function nk_image_handle(handle)
    ccall((:nk_image_handle, libnuklear), nk_image, (nk_handle,), handle)
end

function nk_image_ptr(ptr)
    ccall((:nk_image_ptr, libnuklear), nk_image, (Ptr{Cvoid},), ptr)
end

function nk_image_id(id)
    ccall((:nk_image_id, libnuklear), nk_image, (Cint,), id)
end

function nk_image_is_subimage(img)
    ccall((:nk_image_is_subimage, libnuklear), Cint, (Ptr{nk_image},), img)
end

function nk_image(ctx, img)
    ccall((:nk_image, libnuklear), Cvoid, (Ptr{nk_context}, nk_image), ctx, img)
end

function nk_image_color(ctx, img, col)
    ccall((:nk_image_color, libnuklear), Cvoid, (Ptr{nk_context}, nk_image, nk_color), ctx, img, col)
end

function nk_draw_symbol(out, type, content, background, foreground, border_width, font)
    ccall((:nk_draw_symbol, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_symbol_type, nk_rect, nk_color, nk_color, Cfloat, Ptr{nk_user_font}), out, type, content, background, foreground, border_width, font)
end

function nk_button_behavior(state, r, i, behavior)
    ccall((:nk_button_behavior, libnuklear), Cint, (Ptr{nk_flags}, nk_rect, Ptr{nk_input}, nk_button_behavior), state, r, i, behavior)
end

function nk_draw_button(out, bounds, state, style)
    ccall((:nk_draw_button, libnuklear), Ptr{nk_style_item}, (Ptr{nk_command_buffer}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}), out, bounds, state, style)
end

function nk_do_button(state, out, r, style, in, behavior, content)
    ccall((:nk_do_button, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Ptr{nk_style_button}, Ptr{nk_input}, nk_button_behavior, Ptr{nk_rect}), state, out, r, style, in, behavior, content)
end

function nk_draw_button_text(out, bounds, content, state, style, txt, len, text_alignment, font)
    ccall((:nk_draw_button_text, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, Cstring, Cint, nk_flags, Ptr{nk_user_font}), out, bounds, content, state, style, txt, len, text_alignment, font)
end

function nk_do_button_text(state, out, bounds, string, len, align, behavior, style, in, font)
    ccall((:nk_do_button_text, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, nk_flags, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, string, len, align, behavior, style, in, font)
end

function nk_draw_button_symbol(out, bounds, content, state, style, type, font)
    ccall((:nk_draw_button_symbol, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, nk_symbol_type, Ptr{nk_user_font}), out, bounds, content, state, style, type, font)
end

function nk_do_button_symbol(state, out, bounds, symbol, behavior, style, in, font)
    ccall((:nk_do_button_symbol, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_symbol_type, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, symbol, behavior, style, in, font)
end

function nk_draw_button_image(out, bounds, content, state, style, img)
    ccall((:nk_draw_button_image, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, Ptr{nk_image}), out, bounds, content, state, style, img)
end

function nk_do_button_image(state, out, bounds, img, b, style, in)
    ccall((:nk_do_button_image, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_image, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_input}), state, out, bounds, img, b, style, in)
end

function nk_draw_button_text_symbol(out, bounds, label, symbol, state, style, str, len, type, font)
    ccall((:nk_draw_button_text_symbol, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, Cstring, Cint, nk_symbol_type, Ptr{nk_user_font}), out, bounds, label, symbol, state, style, str, len, type, font)
end

function nk_do_button_text_symbol(state, out, bounds, symbol, str, len, align, behavior, style, font, in)
    ccall((:nk_do_button_text_symbol, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_symbol_type, Cstring, Cint, nk_flags, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_user_font}, Ptr{nk_input}), state, out, bounds, symbol, str, len, align, behavior, style, font, in)
end

function nk_draw_button_text_image(out, bounds, label, image, state, style, str, len, font, img)
    ccall((:nk_draw_button_text_image, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Ptr{nk_style_button}, Cstring, Cint, Ptr{nk_user_font}, Ptr{nk_image}), out, bounds, label, image, state, style, str, len, font, img)
end

function nk_do_button_text_image(state, out, bounds, img, str, len, align, behavior, style, font, in)
    ccall((:nk_do_button_text_image, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_image, Cstring, Cint, nk_flags, nk_button_behavior, Ptr{nk_style_button}, Ptr{nk_user_font}, Ptr{nk_input}), state, out, bounds, img, str, len, align, behavior, style, font, in)
end

function nk_button_set_behavior(ctx, behavior)
    ccall((:nk_button_set_behavior, libnuklear), Cvoid, (Ptr{nk_context}, nk_button_behavior), ctx, behavior)
end

function nk_button_push_behavior(ctx, behavior)
    ccall((:nk_button_push_behavior, libnuklear), Cint, (Ptr{nk_context}, nk_button_behavior), ctx, behavior)
end

function nk_button_pop_behavior(ctx)
    ccall((:nk_button_pop_behavior, libnuklear), Cint, (Ptr{nk_context},), ctx)
end

function nk_button_text_styled(ctx, style, title, len)
    ccall((:nk_button_text_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, Cstring, Cint), ctx, style, title, len)
end

function nk_button_text(ctx, title, len)
    ccall((:nk_button_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint), ctx, title, len)
end

function nk_button_label_styled(ctx, style, title)
    ccall((:nk_button_label_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, Cstring), ctx, style, title)
end

function nk_button_label(ctx, title)
    ccall((:nk_button_label, libnuklear), Cint, (Ptr{nk_context}, Cstring), ctx, title)
end

function nk_button_color(ctx, color)
    ccall((:nk_button_color, libnuklear), Cint, (Ptr{nk_context}, nk_color), ctx, color)
end

function nk_button_symbol_styled(ctx, style, symbol)
    ccall((:nk_button_symbol_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_symbol_type), ctx, style, symbol)
end

function nk_button_symbol(ctx, symbol)
    ccall((:nk_button_symbol, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type), ctx, symbol)
end

function nk_button_image_styled(ctx, style, img)
    ccall((:nk_button_image_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_image), ctx, style, img)
end

function nk_button_image(ctx, img)
    ccall((:nk_button_image, libnuklear), Cint, (Ptr{nk_context}, nk_image), ctx, img)
end

function nk_button_symbol_text_styled(ctx, style, symbol, text, len, align)
    ccall((:nk_button_symbol_text_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_symbol_type, Cstring, Cint, nk_flags), ctx, style, symbol, text, len, align)
end

function nk_button_symbol_text(ctx, symbol, text, len, align)
    ccall((:nk_button_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags), ctx, symbol, text, len, align)
end

function nk_button_symbol_label(ctx, symbol, label, align)
    ccall((:nk_button_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags), ctx, symbol, label, align)
end

function nk_button_symbol_label_styled(ctx, style, symbol, title, align)
    ccall((:nk_button_symbol_label_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_symbol_type, Cstring, nk_flags), ctx, style, symbol, title, align)
end

function nk_button_image_text_styled(ctx, style, img, text, len, align)
    ccall((:nk_button_image_text_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_image, Cstring, Cint, nk_flags), ctx, style, img, text, len, align)
end

function nk_button_image_text(ctx, img, text, len, align)
    ccall((:nk_button_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags), ctx, img, text, len, align)
end

function nk_button_image_label(ctx, img, label, align)
    ccall((:nk_button_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags), ctx, img, label, align)
end

function nk_button_image_label_styled(ctx, style, img, label, text_alignment)
    ccall((:nk_button_image_label_styled, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_style_button}, nk_image, Cstring, nk_flags), ctx, style, img, label, text_alignment)
end

function nk_toggle_behavior(in, select, state, active)
    ccall((:nk_toggle_behavior, libnuklear), Cint, (Ptr{nk_input}, nk_rect, Ptr{nk_flags}, Cint), in, select, state, active)
end

function nk_draw_checkbox(out, state, style, active, label, selector, cursors, string, len, font)
    ccall((:nk_draw_checkbox, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_toggle}, Cint, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Cstring, Cint, Ptr{nk_user_font}), out, state, style, active, label, selector, cursors, string, len, font)
end

function nk_draw_option(out, state, style, active, label, selector, cursors, string, len, font)
    ccall((:nk_draw_option, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_toggle}, Cint, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Cstring, Cint, Ptr{nk_user_font}), out, state, style, active, label, selector, cursors, string, len, font)
end

function nk_do_toggle(state, out, r, active, str, len, type, style, in, font)
    ccall((:nk_do_toggle, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Ptr{Cint}, Cstring, Cint, nk_toggle_type, Ptr{nk_style_toggle}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, r, active, str, len, type, style, in, font)
end

function nk_check_text(ctx, text, len, active)
    ccall((:nk_check_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint), ctx, text, len, active)
end

function nk_check_flags_text(ctx, text, len, flags, value)
    ccall((:nk_check_flags_text, libnuklear), UInt32, (Ptr{nk_context}, Cstring, Cint, UInt32, UInt32), ctx, text, len, flags, value)
end

function nk_checkbox_text(ctx, text, len, active)
    ccall((:nk_checkbox_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Ptr{Cint}), ctx, text, len, active)
end

function nk_checkbox_flags_text(ctx, text, len, flags, value)
    ccall((:nk_checkbox_flags_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Ptr{UInt32}, UInt32), ctx, text, len, flags, value)
end

function nk_check_label(ctx, label, active)
    ccall((:nk_check_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint), ctx, label, active)
end

function nk_check_flags_label(ctx, label, flags, value)
    ccall((:nk_check_flags_label, libnuklear), UInt32, (Ptr{nk_context}, Cstring, UInt32, UInt32), ctx, label, flags, value)
end

function nk_checkbox_label(ctx, label, active)
    ccall((:nk_checkbox_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Ptr{Cint}), ctx, label, active)
end

function nk_checkbox_flags_label(ctx, label, flags, value)
    ccall((:nk_checkbox_flags_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Ptr{UInt32}, UInt32), ctx, label, flags, value)
end

function nk_option_text(ctx, text, len, is_active)
    ccall((:nk_option_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint), ctx, text, len, is_active)
end

function nk_radio_text(ctx, text, len, active)
    ccall((:nk_radio_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Ptr{Cint}), ctx, text, len, active)
end

function nk_option_label(ctx, label, active)
    ccall((:nk_option_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint), ctx, label, active)
end

function nk_radio_label(ctx, label, active)
    ccall((:nk_radio_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, Ptr{Cint}), ctx, label, active)
end

function nk_draw_selectable(out, state, style, active, bounds, icon, img, sym, string, len, align, font)
    ccall((:nk_draw_selectable, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_selectable}, Cint, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_image}, nk_symbol_type, Cstring, Cint, nk_flags, Ptr{nk_user_font}), out, state, style, active, bounds, icon, img, sym, string, len, align, font)
end

function nk_do_selectable(state, out, bounds, str, len, align, value, style, in, font)
    ccall((:nk_do_selectable, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, nk_flags, Ptr{Cint}, Ptr{nk_style_selectable}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, str, len, align, value, style, in, font)
end

function nk_do_selectable_image(state, out, bounds, str, len, align, value, img, style, in, font)
    ccall((:nk_do_selectable_image, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, nk_flags, Ptr{Cint}, Ptr{nk_image}, Ptr{nk_style_selectable}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, str, len, align, value, img, style, in, font)
end

function nk_do_selectable_symbol(state, out, bounds, str, len, align, value, sym, style, in, font)
    ccall((:nk_do_selectable_symbol, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Cint, nk_flags, Ptr{Cint}, nk_symbol_type, Ptr{nk_style_selectable}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, str, len, align, value, sym, style, in, font)
end

function nk_selectable_text(ctx, str, len, align, value)
    ccall((:nk_selectable_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, Ptr{Cint}), ctx, str, len, align, value)
end

function nk_selectable_image_text(ctx, img, str, len, align, value)
    ccall((:nk_selectable_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags, Ptr{Cint}), ctx, img, str, len, align, value)
end

function nk_selectable_symbol_text(ctx, sym, str, len, align, value)
    ccall((:nk_selectable_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags, Ptr{Cint}), ctx, sym, str, len, align, value)
end

function nk_selectable_symbol_label(ctx, sym, title, align, value)
    ccall((:nk_selectable_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags, Ptr{Cint}), ctx, sym, title, align, value)
end

function nk_select_text(ctx, str, len, align, value)
    ccall((:nk_select_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags, Cint), ctx, str, len, align, value)
end

function nk_selectable_label(ctx, str, align, value)
    ccall((:nk_selectable_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, Ptr{Cint}), ctx, str, align, value)
end

function nk_selectable_image_label(ctx, img, str, align, value)
    ccall((:nk_selectable_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags, Ptr{Cint}), ctx, img, str, align, value)
end

function nk_select_label(ctx, str, align, value)
    ccall((:nk_select_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags, Cint), ctx, str, align, value)
end

function nk_select_image_label(ctx, img, str, align, value)
    ccall((:nk_select_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags, Cint), ctx, img, str, align, value)
end

function nk_select_image_text(ctx, img, str, len, align, value)
    ccall((:nk_select_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags, Cint), ctx, img, str, len, align, value)
end

function nk_select_symbol_text(ctx, sym, title, title_len, align, value)
    ccall((:nk_select_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags, Cint), ctx, sym, title, title_len, align, value)
end

function nk_select_symbol_label(ctx, sym, title, align, value)
    ccall((:nk_select_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags, Cint), ctx, sym, title, align, value)
end

function nk_slider_behavior(state, logical_cursor, visual_cursor, in, bounds, slider_min, slider_max, slider_value, slider_step, slider_steps)
    ccall((:nk_slider_behavior, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_input}, nk_rect, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), state, logical_cursor, visual_cursor, in, bounds, slider_min, slider_max, slider_value, slider_step, slider_steps)
end

function nk_draw_slider(out, state, style, bounds, visual_cursor, min, value, max)
    ccall((:nk_draw_slider, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_slider}, Ptr{nk_rect}, Ptr{nk_rect}, Cfloat, Cfloat, Cfloat), out, state, style, bounds, visual_cursor, min, value, max)
end

function nk_do_slider(state, out, bounds, min, val, max, step, style, in, font)
    ccall((:nk_do_slider, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cfloat, Cfloat, Cfloat, Cfloat, Ptr{nk_style_slider}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, min, val, max, step, style, in, font)
end

function nk_slider_float(ctx, min_value, value, max_value, value_step)
    ccall((:nk_slider_float, libnuklear), Cint, (Ptr{nk_context}, Cfloat, Ptr{Cfloat}, Cfloat, Cfloat), ctx, min_value, value, max_value, value_step)
end

function nk_slide_float(ctx, min, val, max, step)
    ccall((:nk_slide_float, libnuklear), Cfloat, (Ptr{nk_context}, Cfloat, Cfloat, Cfloat, Cfloat), ctx, min, val, max, step)
end

function nk_slide_int(ctx, min, val, max, step)
    ccall((:nk_slide_int, libnuklear), Cint, (Ptr{nk_context}, Cint, Cint, Cint, Cint), ctx, min, val, max, step)
end

function nk_slider_int(ctx, min, val, max, step)
    ccall((:nk_slider_int, libnuklear), Cint, (Ptr{nk_context}, Cint, Ptr{Cint}, Cint, Cint), ctx, min, val, max, step)
end

function nk_progress_behavior(state, in, r, cursor, max, value, modifiable)
    ccall((:nk_progress_behavior, libnuklear), nk_size, (Ptr{nk_flags}, Ptr{nk_input}, nk_rect, nk_rect, nk_size, nk_size, Cint), state, in, r, cursor, max, value, modifiable)
end

function nk_draw_progress(out, state, style, bounds, scursor, value, max)
    ccall((:nk_draw_progress, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_progress}, Ptr{nk_rect}, Ptr{nk_rect}, nk_size, nk_size), out, state, style, bounds, scursor, value, max)
end

function nk_do_progress(state, out, bounds, value, max, modifiable, style, in)
    ccall((:nk_do_progress, libnuklear), nk_size, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_size, nk_size, Cint, Ptr{nk_style_progress}, Ptr{nk_input}), state, out, bounds, value, max, modifiable, style, in)
end

function nk_progress(ctx, cur, max, is_modifyable)
    ccall((:nk_progress, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_size}, nk_size, Cint), ctx, cur, max, is_modifyable)
end

function nk_prog(ctx, cur, max, modifyable)
    ccall((:nk_prog, libnuklear), nk_size, (Ptr{nk_context}, nk_size, nk_size, Cint), ctx, cur, max, modifyable)
end

function nk_scrollbar_behavior(state, in, has_scrolling, scroll, cursor, empty0, empty1, scroll_offset, target, scroll_step, o)
    ccall((:nk_scrollbar_behavior, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_input}, Cint, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Cfloat, Cfloat, Cfloat, nk_orientation), state, in, has_scrolling, scroll, cursor, empty0, empty1, scroll_offset, target, scroll_step, o)
end

function nk_draw_scrollbar(out, state, style, bounds, scroll)
    ccall((:nk_draw_scrollbar, libnuklear), Cvoid, (Ptr{nk_command_buffer}, nk_flags, Ptr{nk_style_scrollbar}, Ptr{nk_rect}, Ptr{nk_rect}), out, state, style, bounds, scroll)
end

function nk_do_scrollbarv(state, out, scroll, has_scrolling, offset, target, step, button_pixel_inc, style, in, font)
    ccall((:nk_do_scrollbarv, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Ptr{nk_style_scrollbar}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, scroll, has_scrolling, offset, target, step, button_pixel_inc, style, in, font)
end

function nk_do_scrollbarh(state, out, scroll, has_scrolling, offset, target, step, button_pixel_inc, style, in, font)
    ccall((:nk_do_scrollbarh, libnuklear), Cfloat, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Ptr{nk_style_scrollbar}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, scroll, has_scrolling, offset, target, step, button_pixel_inc, style, in, font)
end

function nk_textedit_makeundo_delete(arg1, arg2, arg3)
    ccall((:nk_textedit_makeundo_delete, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cint, Cint), arg1, arg2, arg3)
end

function nk_textedit_makeundo_insert(arg1, arg2, arg3)
    ccall((:nk_textedit_makeundo_insert, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cint, Cint), arg1, arg2, arg3)
end

function nk_textedit_makeundo_replace(arg1, arg2, arg3, arg4)
    ccall((:nk_textedit_makeundo_replace, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cint, Cint, Cint), arg1, arg2, arg3, arg4)
end

function nk_textedit_get_width(edit, line_start, char_id, font)
    ccall((:nk_textedit_get_width, libnuklear), Cfloat, (Ptr{nk_text_edit}, Cint, Cint, Ptr{nk_user_font}), edit, line_start, char_id, font)
end

function nk_textedit_layout_row(r, edit, line_start_id, row_height, font)
    ccall((:nk_textedit_layout_row, libnuklear), Cvoid, (Ptr{nk_text_edit_row}, Ptr{nk_text_edit}, Cint, Cfloat, Ptr{nk_user_font}), r, edit, line_start_id, row_height, font)
end

function nk_textedit_locate_coord(edit, x, y, font, row_height)
    ccall((:nk_textedit_locate_coord, libnuklear), Cint, (Ptr{nk_text_edit}, Cfloat, Cfloat, Ptr{nk_user_font}, Cfloat), edit, x, y, font, row_height)
end

function nk_textedit_click(state, x, y, font, row_height)
    ccall((:nk_textedit_click, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cfloat, Cfloat, Ptr{nk_user_font}, Cfloat), state, x, y, font, row_height)
end

function nk_textedit_drag(state, x, y, font, row_height)
    ccall((:nk_textedit_drag, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cfloat, Cfloat, Ptr{nk_user_font}, Cfloat), state, x, y, font, row_height)
end

function nk_textedit_find_charpos(find, state, n, single_line, font, row_height)
    ccall((:nk_textedit_find_charpos, libnuklear), Cvoid, (Ptr{nk_text_find}, Ptr{nk_text_edit}, Cint, Cint, Ptr{nk_user_font}, Cfloat), find, state, n, single_line, font, row_height)
end

function nk_textedit_clamp(state)
    ccall((:nk_textedit_clamp, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_delete(state, where, len)
    ccall((:nk_textedit_delete, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cint, Cint), state, where, len)
end

function nk_textedit_delete_selection(state)
    ccall((:nk_textedit_delete_selection, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_sortselection(state)
    ccall((:nk_textedit_sortselection, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_move_to_first(state)
    ccall((:nk_textedit_move_to_first, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_move_to_last(state)
    ccall((:nk_textedit_move_to_last, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_is_word_boundary(state, idx)
    ccall((:nk_is_word_boundary, libnuklear), Cint, (Ptr{nk_text_edit}, Cint), state, idx)
end

function nk_textedit_move_to_word_previous(state)
    ccall((:nk_textedit_move_to_word_previous, libnuklear), Cint, (Ptr{nk_text_edit},), state)
end

function nk_textedit_move_to_word_next(state)
    ccall((:nk_textedit_move_to_word_next, libnuklear), Cint, (Ptr{nk_text_edit},), state)
end

function nk_textedit_prep_selection_at_cursor(state)
    ccall((:nk_textedit_prep_selection_at_cursor, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_cut(state)
    ccall((:nk_textedit_cut, libnuklear), Cint, (Ptr{nk_text_edit},), state)
end

function nk_textedit_paste(state, ctext, len)
    ccall((:nk_textedit_paste, libnuklear), Cint, (Ptr{nk_text_edit}, Cstring, Cint), state, ctext, len)
end

function nk_textedit_text(state, text, total_len)
    ccall((:nk_textedit_text, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cstring, Cint), state, text, total_len)
end

function nk_textedit_key(state, key, shift_mod, font, row_height)
    ccall((:nk_textedit_key, libnuklear), Cvoid, (Ptr{nk_text_edit}, nk_keys, Cint, Ptr{nk_user_font}, Cfloat), state, key, shift_mod, font, row_height)
end

function nk_textedit_flush_redo(state)
    ccall((:nk_textedit_flush_redo, libnuklear), Cvoid, (Ptr{nk_text_undo_state},), state)
end

function nk_textedit_discard_undo(state)
    ccall((:nk_textedit_discard_undo, libnuklear), Cvoid, (Ptr{nk_text_undo_state},), state)
end

function nk_textedit_discard_redo(state)
    ccall((:nk_textedit_discard_redo, libnuklear), Cvoid, (Ptr{nk_text_undo_state},), state)
end

function nk_textedit_create_undo_record(state, numchars)
    ccall((:nk_textedit_create_undo_record, libnuklear), Ptr{nk_text_undo_record}, (Ptr{nk_text_undo_state}, Cint), state, numchars)
end

function nk_textedit_createundo(state, pos, insert_len, delete_len)
    ccall((:nk_textedit_createundo, libnuklear), Ptr{nk_rune}, (Ptr{nk_text_undo_state}, Cint, Cint, Cint), state, pos, insert_len, delete_len)
end

function nk_textedit_undo(state)
    ccall((:nk_textedit_undo, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_redo(state)
    ccall((:nk_textedit_redo, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_makeundo_insert(state, where, length)
    ccall((:nk_textedit_makeundo_insert, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cint, Cint), state, where, length)
end

function nk_textedit_makeundo_delete(state, where, length)
    ccall((:nk_textedit_makeundo_delete, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cint, Cint), state, where, length)
end

function nk_textedit_makeundo_replace(state, where, old_length, new_length)
    ccall((:nk_textedit_makeundo_replace, libnuklear), Cvoid, (Ptr{nk_text_edit}, Cint, Cint, Cint), state, where, old_length, new_length)
end

function nk_textedit_clear_state(state, type, filter)
    ccall((:nk_textedit_clear_state, libnuklear), Cvoid, (Ptr{nk_text_edit}, nk_text_edit_type, nk_plugin_filter), state, type, filter)
end

function nk_textedit_init_fixed(state, memory, size)
    ccall((:nk_textedit_init_fixed, libnuklear), Cvoid, (Ptr{nk_text_edit}, Ptr{Cvoid}, nk_size), state, memory, size)
end

function nk_textedit_init(state, alloc, size)
    ccall((:nk_textedit_init, libnuklear), Cvoid, (Ptr{nk_text_edit}, Ptr{nk_allocator}, nk_size), state, alloc, size)
end

function nk_textedit_init_default(state)
    ccall((:nk_textedit_init_default, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_select_all(state)
    ccall((:nk_textedit_select_all, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_textedit_free(state)
    ccall((:nk_textedit_free, libnuklear), Cvoid, (Ptr{nk_text_edit},), state)
end

function nk_filter_default(box, unicode)
    ccall((:nk_filter_default, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), box, unicode)
end

function nk_filter_ascii(box, unicode)
    ccall((:nk_filter_ascii, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), box, unicode)
end

function nk_filter_float(box, unicode)
    ccall((:nk_filter_float, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), box, unicode)
end

function nk_filter_decimal(box, unicode)
    ccall((:nk_filter_decimal, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), box, unicode)
end

function nk_filter_hex(box, unicode)
    ccall((:nk_filter_hex, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), box, unicode)
end

function nk_filter_oct(box, unicode)
    ccall((:nk_filter_oct, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), box, unicode)
end

function nk_filter_binary(box, unicode)
    ccall((:nk_filter_binary, libnuklear), Cint, (Ptr{nk_text_edit}, nk_rune), box, unicode)
end

function nk_edit_draw_text(out, style, pos_x, pos_y, x_offset, text, byte_len, row_height, font, background, foreground, is_selected)
    ccall((:nk_edit_draw_text, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_style_edit}, Cfloat, Cfloat, Cfloat, Cstring, Cint, Cfloat, Ptr{nk_user_font}, nk_color, nk_color, Cint), out, style, pos_x, pos_y, x_offset, text, byte_len, row_height, font, background, foreground, is_selected)
end

function nk_do_edit(state, out, bounds, flags, filter, edit, style, in, font)
    ccall((:nk_do_edit, libnuklear), nk_flags, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, nk_flags, nk_plugin_filter, Ptr{nk_text_edit}, Ptr{nk_style_edit}, Ptr{nk_input}, Ptr{nk_user_font}), state, out, bounds, flags, filter, edit, style, in, font)
end

function nk_edit_focus(ctx, flags)
    ccall((:nk_edit_focus, libnuklear), Cvoid, (Ptr{nk_context}, nk_flags), ctx, flags)
end

function nk_edit_unfocus(ctx)
    ccall((:nk_edit_unfocus, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_edit_string(ctx, flags, memory, len, max, filter)
    ccall((:nk_edit_string, libnuklear), nk_flags, (Ptr{nk_context}, nk_flags, Cstring, Ptr{Cint}, Cint, nk_plugin_filter), ctx, flags, memory, len, max, filter)
end

function nk_edit_buffer(ctx, flags, edit, filter)
    ccall((:nk_edit_buffer, libnuklear), nk_flags, (Ptr{nk_context}, nk_flags, Ptr{nk_text_edit}, nk_plugin_filter), ctx, flags, edit, filter)
end

function nk_edit_string_zero_terminated(ctx, flags, buffer, max, filter)
    ccall((:nk_edit_string_zero_terminated, libnuklear), nk_flags, (Ptr{nk_context}, nk_flags, Cstring, Cint, nk_plugin_filter), ctx, flags, buffer, max, filter)
end

function nk_drag_behavior(state, in, drag, variant, inc_per_pixel)
    ccall((:nk_drag_behavior, libnuklear), Cvoid, (Ptr{nk_flags}, Ptr{nk_input}, nk_rect, Ptr{nk_property_variant}, Cfloat), state, in, drag, variant, inc_per_pixel)
end

function nk_property_behavior(ws, in, property, label, edit, empty, state, variant, inc_per_pixel)
    ccall((:nk_property_behavior, libnuklear), Cvoid, (Ptr{nk_flags}, Ptr{nk_input}, nk_rect, nk_rect, nk_rect, nk_rect, Ptr{Cint}, Ptr{nk_property_variant}, Cfloat), ws, in, property, label, edit, empty, state, variant, inc_per_pixel)
end

function nk_draw_property(out, style, bounds, label, state, name, len, font)
    ccall((:nk_draw_property, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_style_property}, Ptr{nk_rect}, Ptr{nk_rect}, nk_flags, Cstring, Cint, Ptr{nk_user_font}), out, style, bounds, label, state, name, len, font)
end

function nk_do_property(ws, out, property, name, variant, inc_per_pixel, buffer, len, state, cursor, select_begin, select_end, style, filter, in, font, text_edit, behavior)
    ccall((:nk_do_property, libnuklear), Cvoid, (Ptr{nk_flags}, Ptr{nk_command_buffer}, nk_rect, Cstring, Ptr{nk_property_variant}, Cfloat, Cstring, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{nk_style_property}, nk_property_filter, Ptr{nk_input}, Ptr{nk_user_font}, Ptr{nk_text_edit}, nk_button_behavior), ws, out, property, name, variant, inc_per_pixel, buffer, len, state, cursor, select_begin, select_end, style, filter, in, font, text_edit, behavior)
end

function nk_property_variant_int(value, min_value, max_value, step)
    ccall((:nk_property_variant_int, libnuklear), nk_property_variant, (Cint, Cint, Cint, Cint), value, min_value, max_value, step)
end

function nk_property_variant_float(value, min_value, max_value, step)
    ccall((:nk_property_variant_float, libnuklear), nk_property_variant, (Cfloat, Cfloat, Cfloat, Cfloat), value, min_value, max_value, step)
end

function nk_property_variant_double(value, min_value, max_value, step)
    ccall((:nk_property_variant_double, libnuklear), nk_property_variant, (Cdouble, Cdouble, Cdouble, Cdouble), value, min_value, max_value, step)
end

function nk_property(ctx, name, variant, inc_per_pixel, filter)
    ccall((:nk_property, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Ptr{nk_property_variant}, Cfloat, nk_property_filter), ctx, name, variant, inc_per_pixel, filter)
end

function nk_property_int(ctx, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_property_int, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, Ptr{Cint}, Cint, Cint, Cfloat), ctx, name, min, val, max, step, inc_per_pixel)
end

function nk_property_float(ctx, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_property_float, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cfloat, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), ctx, name, min, val, max, step, inc_per_pixel)
end

function nk_property_double(ctx, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_property_double, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cdouble, Ptr{Cdouble}, Cdouble, Cdouble, Cfloat), ctx, name, min, val, max, step, inc_per_pixel)
end

function nk_propertyi(ctx, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_propertyi, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint, Cint, Cint, Cfloat), ctx, name, min, val, max, step, inc_per_pixel)
end

function nk_propertyf(ctx, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_propertyf, libnuklear), Cfloat, (Ptr{nk_context}, Cstring, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), ctx, name, min, val, max, step, inc_per_pixel)
end

function nk_propertyd(ctx, name, min, val, max, step, inc_per_pixel)
    ccall((:nk_propertyd, libnuklear), Cdouble, (Ptr{nk_context}, Cstring, Cdouble, Cdouble, Cdouble, Cdouble, Cfloat), ctx, name, min, val, max, step, inc_per_pixel)
end

function nk_chart_begin_colored(ctx, type, color, highlight, count, min_value, max_value)
    ccall((:nk_chart_begin_colored, libnuklear), Cint, (Ptr{nk_context}, nk_chart_type, nk_color, nk_color, Cint, Cfloat, Cfloat), ctx, type, color, highlight, count, min_value, max_value)
end

function nk_chart_begin(ctx, type, count, min_value, max_value)
    ccall((:nk_chart_begin, libnuklear), Cint, (Ptr{nk_context}, nk_chart_type, Cint, Cfloat, Cfloat), ctx, type, count, min_value, max_value)
end

function nk_chart_add_slot_colored(ctx, type, color, highlight, count, min_value, max_value)
    ccall((:nk_chart_add_slot_colored, libnuklear), Cvoid, (Ptr{nk_context}, nk_chart_type, nk_color, nk_color, Cint, Cfloat, Cfloat), ctx, type, color, highlight, count, min_value, max_value)
end

function nk_chart_add_slot(ctx, type, count, min_value, max_value)
    ccall((:nk_chart_add_slot, libnuklear), Cvoid, (Ptr{nk_context}, nk_chart_type, Cint, Cfloat, Cfloat), ctx, type, count, min_value, max_value)
end

function nk_chart_push_line(ctx, win, g, value, slot)
    ccall((:nk_chart_push_line, libnuklear), nk_flags, (Ptr{nk_context}, Ptr{nk_window}, Ptr{nk_chart}, Cfloat, Cint), ctx, win, g, value, slot)
end

function nk_chart_push_column(ctx, win, chart, value, slot)
    ccall((:nk_chart_push_column, libnuklear), nk_flags, (Ptr{nk_context}, Ptr{nk_window}, Ptr{nk_chart}, Cfloat, Cint), ctx, win, chart, value, slot)
end

function nk_chart_push_slot(ctx, value, slot)
    ccall((:nk_chart_push_slot, libnuklear), nk_flags, (Ptr{nk_context}, Cfloat, Cint), ctx, value, slot)
end

function nk_chart_push(ctx, value)
    ccall((:nk_chart_push, libnuklear), nk_flags, (Ptr{nk_context}, Cfloat), ctx, value)
end

function nk_chart_end(ctx)
    ccall((:nk_chart_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_plot(ctx, type, values, count, offset)
    ccall((:nk_plot, libnuklear), Cvoid, (Ptr{nk_context}, nk_chart_type, Ptr{Cfloat}, Cint, Cint), ctx, type, values, count, offset)
end

function nk_plot_function(ctx, type, userdata, value_getter, count, offset)
    ccall((:nk_plot_function, libnuklear), Cvoid, (Ptr{nk_context}, nk_chart_type, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint), ctx, type, userdata, value_getter, count, offset)
end

function nk_color_picker_behavior(state, bounds, matrix, hue_bar, alpha_bar, color, in)
    ccall((:nk_color_picker_behavior, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_colorf}, Ptr{nk_input}), state, bounds, matrix, hue_bar, alpha_bar, color, in)
end

function nk_draw_color_picker(o, matrix, hue_bar, alpha_bar, col)
    ccall((:nk_draw_color_picker, libnuklear), Cvoid, (Ptr{nk_command_buffer}, Ptr{nk_rect}, Ptr{nk_rect}, Ptr{nk_rect}, nk_colorf), o, matrix, hue_bar, alpha_bar, col)
end

function nk_do_color_picker(state, out, col, fmt, bounds, padding, in, font)
    ccall((:nk_do_color_picker, libnuklear), Cint, (Ptr{nk_flags}, Ptr{nk_command_buffer}, Ptr{nk_colorf}, nk_color_format, nk_rect, nk_vec2, Ptr{nk_input}, Ptr{nk_user_font}), state, out, col, fmt, bounds, padding, in, font)
end

function nk_color_pick(ctx, color, fmt)
    ccall((:nk_color_pick, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_colorf}, nk_color_format), ctx, color, fmt)
end

function nk_color_picker(ctx, color, fmt)
    ccall((:nk_color_picker, libnuklear), nk_colorf, (Ptr{nk_context}, nk_colorf, nk_color_format), ctx, color, fmt)
end

function nk_combo_begin(ctx, win, size, is_clicked, header)
    ccall((:nk_combo_begin, libnuklear), Cint, (Ptr{nk_context}, Ptr{nk_window}, nk_vec2, Cint, nk_rect), ctx, win, size, is_clicked, header)
end

function nk_combo_begin_text(ctx, selected, len, size)
    ccall((:nk_combo_begin_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_vec2), ctx, selected, len, size)
end

function nk_combo_begin_label(ctx, selected, size)
    ccall((:nk_combo_begin_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_vec2), ctx, selected, size)
end

function nk_combo_begin_color(ctx, color, size)
    ccall((:nk_combo_begin_color, libnuklear), Cint, (Ptr{nk_context}, nk_color, nk_vec2), ctx, color, size)
end

function nk_combo_begin_symbol(ctx, symbol, size)
    ccall((:nk_combo_begin_symbol, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, nk_vec2), ctx, symbol, size)
end

function nk_combo_begin_symbol_text(ctx, selected, len, symbol, size)
    ccall((:nk_combo_begin_symbol_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_symbol_type, nk_vec2), ctx, selected, len, symbol, size)
end

function nk_combo_begin_image(ctx, img, size)
    ccall((:nk_combo_begin_image, libnuklear), Cint, (Ptr{nk_context}, nk_image, nk_vec2), ctx, img, size)
end

function nk_combo_begin_image_text(ctx, selected, len, img, size)
    ccall((:nk_combo_begin_image_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_image, nk_vec2), ctx, selected, len, img, size)
end

function nk_combo_begin_symbol_label(ctx, selected, type, size)
    ccall((:nk_combo_begin_symbol_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_symbol_type, nk_vec2), ctx, selected, type, size)
end

function nk_combo_begin_image_label(ctx, selected, img, size)
    ccall((:nk_combo_begin_image_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_image, nk_vec2), ctx, selected, img, size)
end

function nk_combo_item_text(ctx, text, len, align)
    ccall((:nk_combo_item_text, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, nk_flags), ctx, text, len, align)
end

function nk_combo_item_label(ctx, label, align)
    ccall((:nk_combo_item_label, libnuklear), Cint, (Ptr{nk_context}, Cstring, nk_flags), ctx, label, align)
end

function nk_combo_item_image_text(ctx, img, text, len, alignment)
    ccall((:nk_combo_item_image_text, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, Cint, nk_flags), ctx, img, text, len, alignment)
end

function nk_combo_item_image_label(ctx, img, text, alignment)
    ccall((:nk_combo_item_image_label, libnuklear), Cint, (Ptr{nk_context}, nk_image, Cstring, nk_flags), ctx, img, text, alignment)
end

function nk_combo_item_symbol_text(ctx, sym, text, len, alignment)
    ccall((:nk_combo_item_symbol_text, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, Cint, nk_flags), ctx, sym, text, len, alignment)
end

function nk_combo_item_symbol_label(ctx, sym, label, alignment)
    ccall((:nk_combo_item_symbol_label, libnuklear), Cint, (Ptr{nk_context}, nk_symbol_type, Cstring, nk_flags), ctx, sym, label, alignment)
end

function nk_combo_end(ctx)
    ccall((:nk_combo_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_combo_close(ctx)
    ccall((:nk_combo_close, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_combo(ctx, items, count, selected, item_height, size)
    ccall((:nk_combo, libnuklear), Cint, (Ptr{nk_context}, Ptr{Cstring}, Cint, Cint, Cint, nk_vec2), ctx, items, count, selected, item_height, size)
end

function nk_combo_separator(ctx, items_separated_by_separator, separator, selected, count, item_height, size)
    ccall((:nk_combo_separator, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint, Cint, Cint, nk_vec2), ctx, items_separated_by_separator, separator, selected, count, item_height, size)
end

function nk_combo_string(ctx, items_separated_by_zeros, selected, count, item_height, size)
    ccall((:nk_combo_string, libnuklear), Cint, (Ptr{nk_context}, Cstring, Cint, Cint, Cint, nk_vec2), ctx, items_separated_by_zeros, selected, count, item_height, size)
end

function nk_combo_callback(ctx, item_getter, userdata, selected, count, item_height, size)
    ccall((:nk_combo_callback, libnuklear), Cint, (Ptr{nk_context}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint, nk_vec2), ctx, item_getter, userdata, selected, count, item_height, size)
end

function nk_combobox(ctx, items, count, selected, item_height, size)
    ccall((:nk_combobox, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{Cstring}, Cint, Ptr{Cint}, Cint, nk_vec2), ctx, items, count, selected, item_height, size)
end

function nk_combobox_string(ctx, items_separated_by_zeros, selected, count, item_height, size)
    ccall((:nk_combobox_string, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Ptr{Cint}, Cint, Cint, nk_vec2), ctx, items_separated_by_zeros, selected, count, item_height, size)
end

function nk_combobox_separator(ctx, items_separated_by_separator, separator, selected, count, item_height, size)
    ccall((:nk_combobox_separator, libnuklear), Cvoid, (Ptr{nk_context}, Cstring, Cint, Ptr{Cint}, Cint, Cint, nk_vec2), ctx, items_separated_by_separator, separator, selected, count, item_height, size)
end

function nk_combobox_callback(ctx, item_getter, userdata, selected, count, item_height, size)
    ccall((:nk_combobox_callback, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cint}, Cint, Cint, nk_vec2), ctx, item_getter, userdata, selected, count, item_height, size)
end

function nk_tooltip_begin(ctx, width)
    ccall((:nk_tooltip_begin, libnuklear), Cint, (Ptr{nk_context}, Cfloat), ctx, width)
end

function nk_tooltip_end(ctx)
    ccall((:nk_tooltip_end, libnuklear), Cvoid, (Ptr{nk_context},), ctx)
end

function nk_tooltip(ctx, text)
    ccall((:nk_tooltip, libnuklear), Cvoid, (Ptr{nk_context}, Cstring), ctx, text)
end
