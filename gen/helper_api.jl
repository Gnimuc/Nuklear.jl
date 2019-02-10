# Julia wrapper for header: /Users/gnimuc/.julia/dev/Nuklear/deps/usr/include/helper.h
# Automatically generated using Clang.jl


function nk_create_context()
    ccall((:nk_create_context, libnuklear), Ptr{nk_context}, ())
end

function nk_create_buffer()
    ccall((:nk_create_buffer, libnuklear), Ptr{nk_buffer}, ())
end

function nk_create_font_atlas()
    ccall((:nk_create_font_atlas, libnuklear), Ptr{nk_font_atlas}, ())
end

function nk_create_user_font()
    ccall((:nk_create_user_font, libnuklear), Ptr{nk_user_font}, ())
end

function nk_delete_user_font(ufont)
    ccall((:nk_delete_user_font, libnuklear), Cvoid, (Ptr{nk_user_font},), ufont)
end

function nk_set_clip(ctx, clipboard_copy, clipboard_paste)
    ccall((:nk_set_clip, libnuklear), Cvoid, (Ptr{nk_context}, nk_plugin_copy, nk_plugin_paste), ctx, clipboard_copy, clipboard_paste)
end

function nk_set_default_font(ctx, atlas)
    ccall((:nk_set_default_font, libnuklear), Cvoid, (Ptr{nk_context}, Ptr{nk_font_atlas}), ctx, atlas)
end

function nk_set_convert_config(AA, null)
    ccall((:nk_set_convert_config, libnuklear), Ptr{nk_convert_config}, (nk_anti_aliasing, nk_draw_null_texture), AA, null)
end

function nk_unpack_draw_command(cmd, elem_count, clip_rect, texture)
    ccall((:nk_unpack_draw_command, libnuklear), Cvoid, (Ptr{nk_draw_command}, Ptr{UInt32}, Ptr{nk_rect}, Ptr{nk_handle}), cmd, elem_count, clip_rect, texture)
end

function nk_get_font_handle(font)
    ccall((:nk_get_font_handle, libnuklear), Ptr{nk_user_font}, (Ptr{nk_font},), font)
end
