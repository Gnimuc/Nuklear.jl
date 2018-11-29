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

# function nk_vec2(x, y)
#     ccall((:nk_vec2, libnuklear), nk_vec2, (Cfloat, Cfloat), x, y)
# end
#
# function nk_vec2i(x, y)
#     ccall((:nk_vec2i, libnuklear), nk_vec2, (Cint, Cint), x, y)
# end

function nk_vec2v(xy)
    ccall((:nk_vec2v, libnuklear), nk_vec2, (Ptr{Cfloat},), xy)
end

function nk_vec2iv(xy)
    ccall((:nk_vec2iv, libnuklear), nk_vec2, (Ptr{Cint},), xy)
end

function nk_get_null_rect()
    ccall((:nk_get_null_rect, libnuklear), nk_rect, ())
end

# function nk_rect(x, y, w, h)
#     ccall((:nk_rect, libnuklear), nk_rect, (Cfloat, Cfloat, Cfloat, Cfloat), x, y, w, h)
# end
#
# function nk_recti(x, y, w, h)
#     ccall((:nk_recti, libnuklear), nk_rect, (Cint, Cint, Cint, Cint), x, y, w, h)
# end

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
