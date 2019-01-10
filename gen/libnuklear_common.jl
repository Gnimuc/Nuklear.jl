# Automatically generated using Clang.jl


const NK_UNDEFINED = -(Float32(1.0))
const NK_UTF_INVALID = 0xfffd
const NK_UTF_SIZE = 4
const NK_INPUT_MAX = 16
const NK_MAX_NUMBER_BUFFER = 64
const NK_SCROLLBAR_HIDING_TIMEOUT = Float32(4.0)

# Skipping MacroDefinition: NK_FLAG ( x ) ( 1 << ( x ) )
# Skipping MacroDefinition: NK_STRINGIFY ( x ) # x
# Skipping MacroDefinition: NK_MACRO_STRINGIFY ( x ) NK_STRINGIFY ( x )
# Skipping MacroDefinition: NK_STRING_JOIN_IMMEDIATE ( arg1 , arg2 ) arg1 ## arg2
# Skipping MacroDefinition: NK_STRING_JOIN_DELAY ( arg1 , arg2 ) NK_STRING_JOIN_IMMEDIATE ( arg1 , arg2 )
# Skipping MacroDefinition: NK_STRING_JOIN ( arg1 , arg2 ) NK_STRING_JOIN_DELAY ( arg1 , arg2 )
# Skipping MacroDefinition: NK_UNIQUE_NAME ( name ) NK_STRING_JOIN ( name , __LINE__ )
# Skipping MacroDefinition: NK_STATIC_ASSERT ( exp ) typedef char NK_UNIQUE_NAME ( _dummy_array ) [ ( exp ) ? 1 : - 1 ]
# Skipping MacroDefinition: NK_FILE_LINE __FILE__ ":" NK_MACRO_STRINGIFY ( __LINE__ )
# Skipping MacroDefinition: NK_MIN ( a , b ) ( ( a ) < ( b ) ? ( a ) : ( b ) )
# Skipping MacroDefinition: NK_MAX ( a , b ) ( ( a ) < ( b ) ? ( b ) : ( a ) )
# Skipping MacroDefinition: NK_CLAMP ( i , v , x ) ( NK_MAX ( NK_MIN ( v , x ) , i ) )

# const NK_INT8 = int8_t
# const NK_UINT8 = uint8_t
# const NK_INT16 = int16_t
# const NK_UINT16 = uint16_t
# const NK_INT32 = int32_t
# const NK_UINT32 = uint32_t
# const NK_SIZE_TYPE = uintptr_t
# const NK_POINTER_TYPE = uintptr_t

# Skipping MacroDefinition: nk_foreach ( c , ctx ) for ( ( c ) = nk__begin ( ctx ) ; ( c ) != 0 ; ( c ) = nk__next ( ctx , c ) )
# Skipping MacroDefinition: nk_draw_foreach ( cmd , ctx , b ) for ( ( cmd ) = nk__draw_begin ( ctx , b ) ; ( cmd ) != 0 ; ( cmd ) = nk__draw_next ( cmd , b , ctx ) )
nk_tree_push(ctx, type, title, state) = nk_tree_push_hashed(ctx, type, title, state, string(@__LINE__), length(string(@__LINE__)), @__LINE__)
# Skipping MacroDefinition: nk_tree_push_id ( ctx , type , title , state , id ) nk_tree_push_hashed ( ctx , type , title , state , NK_FILE_LINE , nk_strlen ( NK_FILE_LINE ) , id )
# Skipping MacroDefinition: nk_tree_image_push ( ctx , type , img , title , state ) nk_tree_image_push_hashed ( ctx , type , img , title , state , NK_FILE_LINE , nk_strlen ( NK_FILE_LINE ) , __LINE__ )
# Skipping MacroDefinition: nk_tree_image_push_id ( ctx , type , img , title , state , id ) nk_tree_image_push_hashed ( ctx , type , img , title , state , NK_FILE_LINE , nk_strlen ( NK_FILE_LINE ) , id )
# Skipping MacroDefinition: nk_tree_element_push ( ctx , type , title , state , sel ) nk_tree_element_push_hashed ( ctx , type , title , state , sel , NK_FILE_LINE , nk_strlen ( NK_FILE_LINE ) , __LINE__ )
# Skipping MacroDefinition: nk_tree_element_push_id ( ctx , type , title , state , sel , id ) nk_tree_element_push_hashed ( ctx , type , title , state , sel , NK_FILE_LINE , nk_strlen ( NK_FILE_LINE ) , id )

const NK_TEXTEDIT_UNDOSTATECOUNT = 99
const NK_TEXTEDIT_UNDOCHARCOUNT = 999

# Skipping MacroDefinition: NK_VERTEX_LAYOUT_END NK_VERTEX_ATTRIBUTE_COUNT , NK_FORMAT_COUNT , 0
# Skipping MacroDefinition: nk_draw_list_foreach ( cmd , can , b ) for ( ( cmd ) = nk__draw_list_begin ( can , b ) ; ( cmd ) != 0 ; ( cmd ) = nk__draw_list_next ( cmd , b , can ) )

const NK_MAX_LAYOUT_ROW_TEMPLATE_COLUMNS = 16
const NK_CHART_MAX_SLOT = 4
const NK_WINDOW_MAX_NAME = 64
const NK_BUTTON_BEHAVIOR_STACK_SIZE = 8
const NK_FONT_STACK_SIZE = 8
const NK_STYLE_ITEM_STACK_SIZE = 16
const NK_FLOAT_STACK_SIZE = 32
const NK_VECTOR_STACK_SIZE = 16
const NK_FLAGS_STACK_SIZE = 32
const NK_COLOR_STACK_SIZE = 32

# Skipping MacroDefinition: NK_CONFIGURATION_STACK_TYPE ( prefix , name , type ) struct nk_config_stack_ ## name ## _element { prefix ## _ ## type * address ; prefix ## _ ## type old_value ; }
# Skipping MacroDefinition: NK_CONFIG_STACK ( type , size ) struct nk_config_stack_ ## type { int head ; struct nk_config_stack_ ## type ## _element elements [ size ] ; }
# Skipping MacroDefinition: NK_VALUE_PAGE_CAPACITY ( ( ( NK_MAX ( sizeof ( struct nk_window ) , sizeof ( struct nk_panel ) ) / sizeof ( nk_uint ) ) ) / 2 )

const NK_PI = Float32(3.141592654)
const NK_MAX_FLOAT_PRECISION = 2

# Skipping MacroDefinition: NK_UNUSED ( x ) ( ( void ) ( x ) )
# Skipping MacroDefinition: NK_SATURATE ( x ) ( NK_MAX ( 0 , NK_MIN ( 1.0f , x ) ) )
# Skipping MacroDefinition: NK_LEN ( a ) ( sizeof ( a ) / sizeof ( a ) [ 0 ] )
# Skipping MacroDefinition: NK_ABS ( a ) ( ( ( a ) < 0 ) ? - ( a ) : ( a ) )
# Skipping MacroDefinition: NK_BETWEEN ( x , a , b ) ( ( a ) <= ( x ) && ( x ) < ( b ) )
# Skipping MacroDefinition: NK_INBOX ( px , py , x , y , w , h ) ( NK_BETWEEN ( px , x , x + w ) && NK_BETWEEN ( py , y , y + h ) )
# Skipping MacroDefinition: NK_INTERSECT ( x0 , y0 , w0 , h0 , x1 , y1 , w1 , h1 ) ( ! ( ( ( x1 > ( x0 + w0 ) ) || ( ( x1 + w1 ) < x0 ) || ( y1 > ( y0 + h0 ) ) || ( y1 + h1 ) < y0 ) ) )
# Skipping MacroDefinition: NK_CONTAINS ( x , y , w , h , bx , by , bw , bh ) ( NK_INBOX ( x , y , bx , by , bw , bh ) && NK_INBOX ( x + w , y + h , bx , by , bw , bh ) )
# Skipping MacroDefinition: nk_vec2_sub ( a , b ) nk_vec2 ( ( a ) . x - ( b ) . x , ( a ) . y - ( b ) . y )
# Skipping MacroDefinition: nk_vec2_add ( a , b ) nk_vec2 ( ( a ) . x + ( b ) . x , ( a ) . y + ( b ) . y )
# Skipping MacroDefinition: nk_vec2_len_sqr ( a ) ( ( a ) . x * ( a ) . x + ( a ) . y * ( a ) . y )
# Skipping MacroDefinition: nk_vec2_muls ( a , t ) nk_vec2 ( ( a ) . x * ( t ) , ( a ) . y * ( t ) )
# Skipping MacroDefinition: nk_ptr_add ( t , p , i ) ( ( t * ) ( ( void * ) ( ( nk_byte * ) ( p ) + ( i ) ) ) )
# Skipping MacroDefinition: nk_ptr_add_const ( t , p , i ) ( ( const t * ) ( ( const void * ) ( ( const nk_byte * ) ( p ) + ( i ) ) ) )
# Skipping MacroDefinition: nk_zero_struct ( s ) nk_zero ( & s , sizeof ( s ) )
# Skipping MacroDefinition: NK_UINT_TO_PTR ( x ) ( ( void * ) ( __PTRDIFF_TYPE__ ) ( x ) )
# Skipping MacroDefinition: NK_PTR_TO_UINT ( x ) ( ( nk_size ) ( __PTRDIFF_TYPE__ ) ( x ) )
# Skipping MacroDefinition: NK_ALIGN_PTR ( x , mask ) ( NK_UINT_TO_PTR ( ( NK_PTR_TO_UINT ( ( nk_byte * ) ( x ) + ( mask - 1 ) ) & ~ ( mask - 1 ) ) ) )
# Skipping MacroDefinition: NK_ALIGN_PTR_BACK ( x , mask ) ( NK_UINT_TO_PTR ( ( NK_PTR_TO_UINT ( ( nk_byte * ) ( x ) ) & ~ ( mask - 1 ) ) ) )
# Skipping MacroDefinition: NK_OFFSETOF ( st , m ) ( ( nk_ptr ) & ( ( ( st * ) 0 ) -> m ) )
# Skipping MacroDefinition: NK_CONTAINER_OF ( ptr , type , member ) ( type * ) ( ( void * ) ( ( char * ) ( 1 ? ( ptr ) : & ( ( type * ) 0 ) -> member ) - NK_OFFSETOF ( type , member ) ) )
# Skipping MacroDefinition: NK_ALIGNOF ( t ) ( ( char * ) ( & ( ( struct { char c ; t _h ; } * ) 0 ) -> _h ) - ( char * ) 0 )

const nk_char = Int8
const nk_uchar = UInt8
const nk_byte = UInt8
const nk_short = Int16
const nk_ushort = UInt16
const nk_int = Int32
const nk_uint = UInt32
const nk_size = Csize_t
const nk_ptr = Csize_t
const nk_hash = nk_uint
const nk_flags = nk_uint
const nk_rune = nk_uint
const _dummy_array422 = NTuple{1, UInt8}
const _dummy_array423 = NTuple{1, UInt8}
const _dummy_array424 = NTuple{1, UInt8}
const _dummy_array425 = NTuple{1, UInt8}
const _dummy_array426 = NTuple{1, UInt8}
const _dummy_array427 = NTuple{1, UInt8}
const _dummy_array428 = NTuple{1, UInt8}
const _dummy_array429 = NTuple{1, UInt8}
const _dummy_array430 = NTuple{1, UInt8}

struct nk_buffer_marker
    active::Cint
    offset::nk_size
end

struct nk_handle
    id::Cint
end

const nk_plugin_alloc = Ptr{Cvoid}
const nk_plugin_free = Ptr{Cvoid}

struct nk_allocator
    userdata::nk_handle
    alloc::nk_plugin_alloc
    free::nk_plugin_free
end

@cenum(nk_allocation_type,
    NK_BUFFER_FIXED = 0,
    NK_BUFFER_DYNAMIC = 1,
)

struct nk_memory
    ptr::Ptr{Cvoid}
    size::nk_size
end

struct nk_buffer
    marker::NTuple{2, nk_buffer_marker}
    pool::nk_allocator
    type::nk_allocation_type
    memory::nk_memory
    grow_factor::Cfloat
    allocated::nk_size
    needed::nk_size
    calls::nk_size
    size::nk_size
end

struct nk_rect
    x::Cfloat
    y::Cfloat
    w::Cfloat
    h::Cfloat
end

struct nk_command_buffer
    base::Ptr{nk_buffer}
    clip::nk_rect
    use_clipping::Cint
    userdata::nk_handle
    _begin::nk_size
    _end::nk_size
    last::nk_size
end

struct nk_draw_command
    elem_count::UInt32
    clip_rect::nk_rect
    texture::nk_handle
end

@cenum(nk_anti_aliasing,
    NK_ANTI_ALIASING_OFF = 0,
    NK_ANTI_ALIASING_ON = 1,
)

struct nk_vec2
    x::Cfloat
    y::Cfloat
end

struct nk_draw_null_texture
    texture::nk_handle
    uv::nk_vec2
end

@cenum(nk_draw_vertex_layout_attribute,
    NK_VERTEX_POSITION = 0,
    NK_VERTEX_COLOR = 1,
    NK_VERTEX_TEXCOORD = 2,
    NK_VERTEX_ATTRIBUTE_COUNT = 3,
)
@cenum(nk_draw_vertex_layout_format,
    NK_FORMAT_SCHAR = 0,
    NK_FORMAT_SSHORT = 1,
    NK_FORMAT_SINT = 2,
    NK_FORMAT_UCHAR = 3,
    NK_FORMAT_USHORT = 4,
    NK_FORMAT_UINT = 5,
    NK_FORMAT_FLOAT = 6,
    NK_FORMAT_DOUBLE = 7,
    NK_FORMAT_COLOR_BEGIN = 8,
    NK_FORMAT_R8G8B8 = 8,
    NK_FORMAT_R16G15B16 = 9,
    NK_FORMAT_R32G32B32 = 10,
    NK_FORMAT_R8G8B8A8 = 11,
    NK_FORMAT_B8G8R8A8 = 12,
    NK_FORMAT_R16G15B16A16 = 13,
    NK_FORMAT_R32G32B32A32 = 14,
    NK_FORMAT_R32G32B32A32_FLOAT = 15,
    NK_FORMAT_R32G32B32A32_DOUBLE = 16,
    NK_FORMAT_RGB32 = 17,
    NK_FORMAT_RGBA32 = 18,
    NK_FORMAT_COLOR_END = 18,
    NK_FORMAT_COUNT = 19,
)

struct nk_draw_vertex_layout_element
    attribute::nk_draw_vertex_layout_attribute
    format::nk_draw_vertex_layout_format
    offset::nk_size
end

struct nk_convert_config
    global_alpha::Cfloat
    line_AA::nk_anti_aliasing
    shape_AA::nk_anti_aliasing
    circle_segment_count::UInt32
    arc_segment_count::UInt32
    curve_segment_count::UInt32
    null::nk_draw_null_texture
    vertex_layout::Ptr{nk_draw_vertex_layout_element}
    vertex_size::nk_size
    vertex_alignment::nk_size
end

@cenum(nk_style_item_type,
    NK_STYLE_ITEM_COLOR = 0,
    NK_STYLE_ITEM_IMAGE = 1,
)

struct nk_image
    handle::nk_handle
    w::UInt16
    h::UInt16
    region::NTuple{4, UInt16}
end

struct nk_style_item_data
    image::nk_image
end

struct nk_style_item
    type::nk_style_item_type
    data::nk_style_item_data
end

const nk_plugin_paste = Ptr{Cvoid}
const nk_plugin_copy = Ptr{Cvoid}

struct nk_clipboard
    userdata::nk_handle
    paste::nk_plugin_paste
    copy::nk_plugin_copy
end

struct nk_str
    buffer::nk_buffer
    len::Cint
end

const nk_plugin_filter = Ptr{Cvoid}

struct nk_text_undo_record
    where::Cint
    insert_length::Int16
    delete_length::Int16
    char_storage::Int16
end

struct nk_text_undo_state
    undo_rec::NTuple{99, nk_text_undo_record}
    undo_char::NTuple{999, nk_rune}
    undo_point::Int16
    redo_point::Int16
    undo_char_point::Int16
    redo_char_point::Int16
end

struct nk_text_edit
    clip::nk_clipboard
    string::nk_str
    filter::nk_plugin_filter
    scrollbar::nk_vec2
    cursor::Cint
    select_start::Cint
    select_end::Cint
    mode::Cuchar
    cursor_at_end_of_line::Cuchar
    initialized::Cuchar
    has_preferred_x::Cuchar
    single_line::Cuchar
    active::Cuchar
    padding1::Cuchar
    preferred_x::Cfloat
    undo::nk_text_undo_state
end

struct nk_draw_list
    clip_rect::nk_rect
    circle_vtx::NTuple{12, nk_vec2}
    config::nk_convert_config
    buffer::Ptr{nk_buffer}
    vertices::Ptr{nk_buffer}
    elements::Ptr{nk_buffer}
    element_count::UInt32
    vertex_count::UInt32
    cmd_count::UInt32
    cmd_offset::nk_size
    path_count::UInt32
    path_offset::UInt32
    line_AA::nk_anti_aliasing
    shape_AA::nk_anti_aliasing
end

const nk_text_width_f = Ptr{Cvoid}
const nk_query_font_glyph_f = Ptr{Cvoid}

struct nk_user_font
    userdata::nk_handle
    height::Cfloat
    width::nk_text_width_f
    query::nk_query_font_glyph_f
    texture::nk_handle
end

@cenum(nk_panel_type,
    NK_PANEL_NONE = 0,
    NK_PANEL_WINDOW = 1,
    NK_PANEL_GROUP = 2,
    NK_PANEL_POPUP = 4,
    NK_PANEL_CONTEXTUAL = 16,
    NK_PANEL_COMBO = 32,
    NK_PANEL_MENU = 64,
    NK_PANEL_TOOLTIP = 128,
)

struct nk_scroll
    x::nk_uint
    y::nk_uint
end

struct nk_menu_state
    x::Cfloat
    y::Cfloat
    w::Cfloat
    h::Cfloat
    offset::nk_scroll
end

@cenum(nk_panel_row_layout_type,
    NK_LAYOUT_DYNAMIC_FIXED = 0,
    NK_LAYOUT_DYNAMIC_ROW = 1,
    NK_LAYOUT_DYNAMIC_FREE = 2,
    NK_LAYOUT_DYNAMIC = 3,
    NK_LAYOUT_STATIC_FIXED = 4,
    NK_LAYOUT_STATIC_ROW = 5,
    NK_LAYOUT_STATIC_FREE = 6,
    NK_LAYOUT_STATIC = 7,
    NK_LAYOUT_TEMPLATE = 8,
    NK_LAYOUT_COUNT = 9,
)

struct nk_row_layout
    type::nk_panel_row_layout_type
    index::Cint
    height::Cfloat
    min_height::Cfloat
    columns::Cint
    ratio::Ptr{Cfloat}
    item_width::Cfloat
    item_height::Cfloat
    item_offset::Cfloat
    filled::Cfloat
    item::nk_rect
    tree_depth::Cint
    templates::NTuple{16, Cfloat}
end

@cenum(nk_chart_type,
    NK_CHART_LINES = 0,
    NK_CHART_COLUMN = 1,
    NK_CHART_MAX = 2,
)

struct nk_color
    r::nk_byte
    g::nk_byte
    b::nk_byte
    a::nk_byte
end

struct nk_chart_slot
    type::nk_chart_type
    color::nk_color
    highlight::nk_color
    min::Cfloat
    max::Cfloat
    range::Cfloat
    count::Cint
    last::nk_vec2
    index::Cint
end

struct nk_chart
    slot::Cint
    x::Cfloat
    y::Cfloat
    w::Cfloat
    h::Cfloat
    slots::NTuple{4, nk_chart_slot}
end

struct nk_panel
    type::nk_panel_type
    flags::nk_flags
    bounds::nk_rect
    offset_x::Ptr{nk_uint}
    offset_y::Ptr{nk_uint}
    at_x::Cfloat
    at_y::Cfloat
    max_x::Cfloat
    footer_height::Cfloat
    header_height::Cfloat
    border::Cfloat
    has_scrolling::UInt32
    clip::nk_rect
    menu::nk_menu_state
    row::nk_row_layout
    chart::nk_chart
    buffer::Ptr{nk_command_buffer}
    parent::Ptr{nk_panel}
end

struct nk_key
    down::Cint
    clicked::UInt32
end

struct nk_keyboard
    keys::NTuple{30, nk_key}
    text::NTuple{16, UInt8}
    text_len::Cint
end

struct nk_mouse_button
    down::Cint
    clicked::UInt32
    clicked_pos::nk_vec2
end

struct nk_mouse
    buttons::NTuple{4, nk_mouse_button}
    pos::nk_vec2
    prev::nk_vec2
    delta::nk_vec2
    scroll_delta::nk_vec2
    grab::Cuchar
    grabbed::Cuchar
    ungrab::Cuchar
end

struct nk_input
    keyboard::nk_keyboard
    mouse::nk_mouse
end

struct nk_cursor
    img::nk_image
    size::nk_vec2
    offset::nk_vec2
end

struct nk_style_text
    color::nk_color
    padding::nk_vec2
end

struct nk_style_button
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    border_color::nk_color
    text_background::nk_color
    text_normal::nk_color
    text_hover::nk_color
    text_active::nk_color
    text_alignment::nk_flags
    border::Cfloat
    rounding::Cfloat
    padding::nk_vec2
    image_padding::nk_vec2
    touch_padding::nk_vec2
    userdata::nk_handle
    draw_begin::Ptr{Cvoid}
    draw_end::Ptr{Cvoid}
end

struct nk_style_toggle
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    border_color::nk_color
    cursor_normal::nk_style_item
    cursor_hover::nk_style_item
    text_normal::nk_color
    text_hover::nk_color
    text_active::nk_color
    text_background::nk_color
    text_alignment::nk_flags
    padding::nk_vec2
    touch_padding::nk_vec2
    spacing::Cfloat
    border::Cfloat
    userdata::nk_handle
    draw_begin::Ptr{Cvoid}
    draw_end::Ptr{Cvoid}
end

struct nk_style_selectable
    normal::nk_style_item
    hover::nk_style_item
    pressed::nk_style_item
    normal_active::nk_style_item
    hover_active::nk_style_item
    pressed_active::nk_style_item
    text_normal::nk_color
    text_hover::nk_color
    text_pressed::nk_color
    text_normal_active::nk_color
    text_hover_active::nk_color
    text_pressed_active::nk_color
    text_background::nk_color
    text_alignment::nk_flags
    rounding::Cfloat
    padding::nk_vec2
    touch_padding::nk_vec2
    image_padding::nk_vec2
    userdata::nk_handle
    draw_begin::Ptr{Cvoid}
    draw_end::Ptr{Cvoid}
end

@cenum(nk_symbol_type,
    NK_SYMBOL_NONE = 0,
    NK_SYMBOL_X = 1,
    NK_SYMBOL_UNDERSCORE = 2,
    NK_SYMBOL_CIRCLE_SOLID = 3,
    NK_SYMBOL_CIRCLE_OUTLINE = 4,
    NK_SYMBOL_RECT_SOLID = 5,
    NK_SYMBOL_RECT_OUTLINE = 6,
    NK_SYMBOL_TRIANGLE_UP = 7,
    NK_SYMBOL_TRIANGLE_DOWN = 8,
    NK_SYMBOL_TRIANGLE_LEFT = 9,
    NK_SYMBOL_TRIANGLE_RIGHT = 10,
    NK_SYMBOL_PLUS = 11,
    NK_SYMBOL_MINUS = 12,
    NK_SYMBOL_MAX = 13,
)

struct nk_style_slider
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    border_color::nk_color
    bar_normal::nk_color
    bar_hover::nk_color
    bar_active::nk_color
    bar_filled::nk_color
    cursor_normal::nk_style_item
    cursor_hover::nk_style_item
    cursor_active::nk_style_item
    border::Cfloat
    rounding::Cfloat
    bar_height::Cfloat
    padding::nk_vec2
    spacing::nk_vec2
    cursor_size::nk_vec2
    show_buttons::Cint
    inc_button::nk_style_button
    dec_button::nk_style_button
    inc_symbol::nk_symbol_type
    dec_symbol::nk_symbol_type
    userdata::nk_handle
    draw_begin::Ptr{Cvoid}
    draw_end::Ptr{Cvoid}
end

struct nk_style_progress
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    border_color::nk_color
    cursor_normal::nk_style_item
    cursor_hover::nk_style_item
    cursor_active::nk_style_item
    cursor_border_color::nk_color
    rounding::Cfloat
    border::Cfloat
    cursor_border::Cfloat
    cursor_rounding::Cfloat
    padding::nk_vec2
    userdata::nk_handle
    draw_begin::Ptr{Cvoid}
    draw_end::Ptr{Cvoid}
end

struct nk_style_scrollbar
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    border_color::nk_color
    cursor_normal::nk_style_item
    cursor_hover::nk_style_item
    cursor_active::nk_style_item
    cursor_border_color::nk_color
    border::Cfloat
    rounding::Cfloat
    border_cursor::Cfloat
    rounding_cursor::Cfloat
    padding::nk_vec2
    show_buttons::Cint
    inc_button::nk_style_button
    dec_button::nk_style_button
    inc_symbol::nk_symbol_type
    dec_symbol::nk_symbol_type
    userdata::nk_handle
    draw_begin::Ptr{Cvoid}
    draw_end::Ptr{Cvoid}
end

struct nk_style_edit
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    border_color::nk_color
    scrollbar::nk_style_scrollbar
    cursor_normal::nk_color
    cursor_hover::nk_color
    cursor_text_normal::nk_color
    cursor_text_hover::nk_color
    text_normal::nk_color
    text_hover::nk_color
    text_active::nk_color
    selected_normal::nk_color
    selected_hover::nk_color
    selected_text_normal::nk_color
    selected_text_hover::nk_color
    border::Cfloat
    rounding::Cfloat
    cursor_size::Cfloat
    scrollbar_size::nk_vec2
    padding::nk_vec2
    row_padding::Cfloat
end

struct nk_style_property
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    border_color::nk_color
    label_normal::nk_color
    label_hover::nk_color
    label_active::nk_color
    sym_left::nk_symbol_type
    sym_right::nk_symbol_type
    border::Cfloat
    rounding::Cfloat
    padding::nk_vec2
    edit::nk_style_edit
    inc_button::nk_style_button
    dec_button::nk_style_button
    userdata::nk_handle
    draw_begin::Ptr{Cvoid}
    draw_end::Ptr{Cvoid}
end

struct nk_style_chart
    background::nk_style_item
    border_color::nk_color
    selected_color::nk_color
    color::nk_color
    border::Cfloat
    rounding::Cfloat
    padding::nk_vec2
end

struct nk_style_tab
    background::nk_style_item
    border_color::nk_color
    text::nk_color
    tab_maximize_button::nk_style_button
    tab_minimize_button::nk_style_button
    node_maximize_button::nk_style_button
    node_minimize_button::nk_style_button
    sym_minimize::nk_symbol_type
    sym_maximize::nk_symbol_type
    border::Cfloat
    rounding::Cfloat
    indent::Cfloat
    padding::nk_vec2
    spacing::nk_vec2
end

struct nk_style_combo
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    border_color::nk_color
    label_normal::nk_color
    label_hover::nk_color
    label_active::nk_color
    symbol_normal::nk_color
    symbol_hover::nk_color
    symbol_active::nk_color
    button::nk_style_button
    sym_normal::nk_symbol_type
    sym_hover::nk_symbol_type
    sym_active::nk_symbol_type
    border::Cfloat
    rounding::Cfloat
    content_padding::nk_vec2
    button_padding::nk_vec2
    spacing::nk_vec2
end

@cenum(nk_style_header_align,
    NK_HEADER_LEFT = 0,
    NK_HEADER_RIGHT = 1,
)

struct nk_style_window_header
    normal::nk_style_item
    hover::nk_style_item
    active::nk_style_item
    close_button::nk_style_button
    minimize_button::nk_style_button
    close_symbol::nk_symbol_type
    minimize_symbol::nk_symbol_type
    maximize_symbol::nk_symbol_type
    label_normal::nk_color
    label_hover::nk_color
    label_active::nk_color
    align::nk_style_header_align
    padding::nk_vec2
    label_padding::nk_vec2
    spacing::nk_vec2
end

struct nk_style_window
    header::nk_style_window_header
    fixed_background::nk_style_item
    background::nk_color
    border_color::nk_color
    popup_border_color::nk_color
    combo_border_color::nk_color
    contextual_border_color::nk_color
    menu_border_color::nk_color
    group_border_color::nk_color
    tooltip_border_color::nk_color
    scaler::nk_style_item
    border::Cfloat
    combo_border::Cfloat
    contextual_border::Cfloat
    menu_border::Cfloat
    group_border::Cfloat
    tooltip_border::Cfloat
    popup_border::Cfloat
    min_row_height_padding::Cfloat
    rounding::Cfloat
    spacing::nk_vec2
    scrollbar_size::nk_vec2
    min_size::nk_vec2
    padding::nk_vec2
    group_padding::nk_vec2
    popup_padding::nk_vec2
    combo_padding::nk_vec2
    contextual_padding::nk_vec2
    menu_padding::nk_vec2
    tooltip_padding::nk_vec2
end

struct nk_style
    font::Ptr{nk_user_font}
    cursors::NTuple{7, Ptr{nk_cursor}}
    cursor_active::Ptr{nk_cursor}
    cursor_last::Ptr{nk_cursor}
    cursor_visible::Cint
    text::nk_style_text
    button::nk_style_button
    contextual_button::nk_style_button
    menu_button::nk_style_button
    option::nk_style_toggle
    checkbox::nk_style_toggle
    selectable::nk_style_selectable
    slider::nk_style_slider
    progress::nk_style_progress
    property::nk_style_property
    edit::nk_style_edit
    chart::nk_style_chart
    scrollh::nk_style_scrollbar
    scrollv::nk_style_scrollbar
    tab::nk_style_tab
    combo::nk_style_combo
    window::nk_style_window
end

@cenum(nk_button_behavior,
    NK_BUTTON_DEFAULT = 0,
    NK_BUTTON_REPEATER = 1,
)

struct nk_config_stack_style_item_element
    address::Ptr{nk_style_item}
    old_value::nk_style_item
end

struct nk_config_stack_style_item
    head::Cint
    elements::NTuple{16, nk_config_stack_style_item_element}
end

struct nk_config_stack_float_element
    address::Ptr{Cfloat}
    old_value::Cfloat
end

struct nk_config_stack_float
    head::Cint
    elements::NTuple{32, nk_config_stack_float_element}
end

struct nk_config_stack_vec2_element
    address::Ptr{nk_vec2}
    old_value::nk_vec2
end

struct nk_config_stack_vec2
    head::Cint
    elements::NTuple{16, nk_config_stack_vec2_element}
end

struct nk_config_stack_flags_element
    address::Ptr{nk_flags}
    old_value::nk_flags
end

struct nk_config_stack_flags
    head::Cint
    elements::NTuple{32, nk_config_stack_flags_element}
end

struct nk_config_stack_color_element
    address::Ptr{nk_color}
    old_value::nk_color
end

struct nk_config_stack_color
    head::Cint
    elements::NTuple{32, nk_config_stack_color_element}
end

struct nk_config_stack_user_font_element
    address::Ptr{Ptr{nk_user_font}}
    old_value::Ptr{nk_user_font}
end

struct nk_config_stack_user_font
    head::Cint
    elements::NTuple{8, nk_config_stack_user_font_element}
end

struct nk_config_stack_button_behavior_element
    address::Ptr{nk_button_behavior}
    old_value::nk_button_behavior
end

struct nk_config_stack_button_behavior
    head::Cint
    elements::NTuple{8, nk_config_stack_button_behavior_element}
end

struct nk_configuration_stacks
    style_items::nk_config_stack_style_item
    floats::nk_config_stack_float
    vectors::nk_config_stack_vec2
    flags::nk_config_stack_flags
    colors::nk_config_stack_color
    fonts::nk_config_stack_user_font
    button_behaviors::nk_config_stack_button_behavior
end

struct nk_table
    seq::UInt32
    size::UInt32
    keys::NTuple{51, nk_hash}
    values::NTuple{51, nk_uint}
    next::Ptr{nk_table}
    prev::Ptr{nk_table}
end

struct nk_page_data
    tbl::nk_table
end

struct nk_page_element
    data::nk_page_data
    next::Ptr{nk_page_element}
    prev::Ptr{nk_page_element}
end

struct nk_page
    size::UInt32
    next::Ptr{nk_page}
    win::NTuple{1, nk_page_element}
end

struct nk_pool
    alloc::nk_allocator
    type::nk_allocation_type
    page_count::UInt32
    pages::Ptr{nk_page}
    freelist::Ptr{nk_page_element}
    capacity::UInt32
    size::nk_size
    cap::nk_size
end

struct nk_property_state
    active::Cint
    prev::Cint
    buffer::NTuple{64, UInt8}
    length::Cint
    cursor::Cint
    select_start::Cint
    select_end::Cint
    name::nk_hash
    seq::UInt32
    old::UInt32
    state::Cint
end

struct nk_popup_buffer
    _begin::nk_size
    parent::nk_size
    last::nk_size
    _end::nk_size
    active::Cint
end

struct nk_popup_state{nk_window}
    win::Ptr{nk_window}
    type::nk_panel_type
    buf::nk_popup_buffer
    name::nk_hash
    active::Cint
    combo_count::UInt32
    con_count::UInt32
    con_old::UInt32
    active_con::UInt32
    header::nk_rect
end

struct nk_edit_state
    name::nk_hash
    seq::UInt32
    old::UInt32
    active::Cint
    prev::Cint
    cursor::Cint
    sel_start::Cint
    sel_end::Cint
    scrollbar::nk_scroll
    mode::Cuchar
    single_line::Cuchar
end

struct nk_window
    seq::UInt32
    name::nk_hash
    name_string::NTuple{64, UInt8}
    flags::nk_flags
    bounds::nk_rect
    scrollbar::nk_scroll
    buffer::nk_command_buffer
    layout::Ptr{nk_panel}
    scrollbar_hiding_timer::Cfloat
    property::nk_property_state
    popup::nk_popup_state
    edit::nk_edit_state
    scrolled::UInt32
    tables::Ptr{nk_table}
    table_count::UInt32
    next::Ptr{nk_window}
    prev::Ptr{nk_window}
    parent::Ptr{nk_window}
end

struct nk_context
    input::nk_input
    style::nk_style
    memory::nk_buffer
    clip::nk_clipboard
    last_widget_state::nk_flags
    button_behavior::nk_button_behavior
    stacks::nk_configuration_stacks
    delta_time_seconds::Cfloat
    draw_list::nk_draw_list
    text_edit::nk_text_edit
    overlay::nk_command_buffer
    build::Cint
    use_pool::Cint
    pool::nk_pool
    _begin::Ptr{nk_window}
    _end::Ptr{nk_window}
    active::Ptr{nk_window}
    current::Ptr{nk_window}
    freelist::Ptr{nk_page_element}
    count::UInt32
    seq::UInt32
end

const nk_style_slide = Cvoid

struct nk_colorf
    r::Cfloat
    g::Cfloat
    b::Cfloat
    a::Cfloat
end

struct nk_vec2i
    x::Int16
    y::Int16
end

struct nk_recti
    x::Int16
    y::Int16
    w::Int16
    h::Int16
end

const nk_glyph = NTuple{4, UInt8}

@cenum(nk_heading,
    NK_UP = 0,
    NK_RIGHT = 1,
    NK_DOWN = 2,
    NK_LEFT = 3,
)
@cenum(nk_modify,
    NK_FIXED = 0,
    NK_MODIFIABLE = 1,
)
@cenum(nk_orientation,
    NK_VERTICAL = 0,
    NK_HORIZONTAL = 1,
)
@cenum(nk_collapse_states,
    NK_MINIMIZED = 0,
    NK_MAXIMIZED = 1,
)
@cenum(nk_show_states,
    NK_HIDDEN = 0,
    NK_SHOWN = 1,
)
@cenum(nk_chart_event,
    NK_CHART_HOVERING = 1,
    NK_CHART_CLICKED = 2,
)
@cenum(nk_color_format,
    NK_RGB = 0,
    NK_RGBA = 1,
)
@cenum(nk_popup_type,
    NK_POPUP_STATIC = 0,
    NK_POPUP_DYNAMIC = 1,
)
@cenum(nk_layout_format,
    NK_DYNAMIC = 0,
    NK_STATIC = 1,
)
@cenum(nk_tree_type,
    NK_TREE_NODE = 0,
    NK_TREE_TAB = 1,
)
@cenum(nk_keys,
    NK_KEY_NONE = 0,
    NK_KEY_SHIFT = 1,
    NK_KEY_CTRL = 2,
    NK_KEY_DEL = 3,
    NK_KEY_ENTER = 4,
    NK_KEY_TAB = 5,
    NK_KEY_BACKSPACE = 6,
    NK_KEY_COPY = 7,
    NK_KEY_CUT = 8,
    NK_KEY_PASTE = 9,
    NK_KEY_UP = 10,
    NK_KEY_DOWN = 11,
    NK_KEY_LEFT = 12,
    NK_KEY_RIGHT = 13,
    NK_KEY_TEXT_INSERT_MODE = 14,
    NK_KEY_TEXT_REPLACE_MODE = 15,
    NK_KEY_TEXT_RESET_MODE = 16,
    NK_KEY_TEXT_LINE_START = 17,
    NK_KEY_TEXT_LINE_END = 18,
    NK_KEY_TEXT_START = 19,
    NK_KEY_TEXT_END = 20,
    NK_KEY_TEXT_UNDO = 21,
    NK_KEY_TEXT_REDO = 22,
    NK_KEY_TEXT_SELECT_ALL = 23,
    NK_KEY_TEXT_WORD_LEFT = 24,
    NK_KEY_TEXT_WORD_RIGHT = 25,
    NK_KEY_SCROLL_START = 26,
    NK_KEY_SCROLL_END = 27,
    NK_KEY_SCROLL_DOWN = 28,
    NK_KEY_SCROLL_UP = 29,
    NK_KEY_MAX = 30,
)
@cenum(nk_buttons,
    NK_BUTTON_LEFT = 0,
    NK_BUTTON_MIDDLE = 1,
    NK_BUTTON_RIGHT = 2,
    NK_BUTTON_DOUBLE = 3,
    NK_BUTTON_MAX = 4,
)
@cenum(nk_convert_result,
    NK_CONVERT_SUCCESS = 0,
    NK_CONVERT_INVALID_PARAM = 1,
    NK_CONVERT_COMMAND_BUFFER_FULL = 2,
    NK_CONVERT_VERTEX_BUFFER_FULL = 4,
    NK_CONVERT_ELEMENT_BUFFER_FULL = 8,
)
@cenum(nk_command_type,
    NK_COMMAND_NOP = 0,
    NK_COMMAND_SCISSOR = 1,
    NK_COMMAND_LINE = 2,
    NK_COMMAND_CURVE = 3,
    NK_COMMAND_RECT = 4,
    NK_COMMAND_RECT_FILLED = 5,
    NK_COMMAND_RECT_MULTI_COLOR = 6,
    NK_COMMAND_CIRCLE = 7,
    NK_COMMAND_CIRCLE_FILLED = 8,
    NK_COMMAND_ARC = 9,
    NK_COMMAND_ARC_FILLED = 10,
    NK_COMMAND_TRIANGLE = 11,
    NK_COMMAND_TRIANGLE_FILLED = 12,
    NK_COMMAND_POLYGON = 13,
    NK_COMMAND_POLYGON_FILLED = 14,
    NK_COMMAND_POLYLINE = 15,
    NK_COMMAND_TEXT = 16,
    NK_COMMAND_IMAGE = 17,
    NK_COMMAND_CUSTOM = 18,
)

struct nk_command
    type::nk_command_type
    next::nk_size
end

@cenum(nk_panel_flags,
    NK_WINDOW_BORDER = 1,
    NK_WINDOW_MOVABLE = 2,
    NK_WINDOW_SCALABLE = 4,
    NK_WINDOW_CLOSABLE = 8,
    NK_WINDOW_MINIMIZABLE = 16,
    NK_WINDOW_NO_SCROLLBAR = 32,
    NK_WINDOW_TITLE = 64,
    NK_WINDOW_SCROLL_AUTO_HIDE = 128,
    NK_WINDOW_BACKGROUND = 256,
    NK_WINDOW_SCALE_LEFT = 512,
    NK_WINDOW_NO_INPUT = 1024,
)

struct nk_list_view
    _begin::Cint
    _end::Cint
    count::Cint
    total_height::Cint
    ctx::Ptr{nk_context}
    scroll_pointer::Ptr{nk_uint}
    scroll_value::nk_uint
end

@cenum(nk_widget_layout_states,
    NK_WIDGET_INVALID = 0,
    NK_WIDGET_VALID = 1,
    NK_WIDGET_ROM = 2,
)
@cenum(nk_widget_states,
    NK_WIDGET_STATE_MODIFIED = 2,
    NK_WIDGET_STATE_INACTIVE = 4,
    NK_WIDGET_STATE_ENTERED = 8,
    NK_WIDGET_STATE_HOVER = 16,
    NK_WIDGET_STATE_ACTIVED = 32,
    NK_WIDGET_STATE_LEFT = 64,
    NK_WIDGET_STATE_HOVERED = 18,
    NK_WIDGET_STATE_ACTIVE = 34,
)
@cenum(nk_text_align,
    NK_TEXT_ALIGN_LEFT = 1,
    NK_TEXT_ALIGN_CENTERED = 2,
    NK_TEXT_ALIGN_RIGHT = 4,
    NK_TEXT_ALIGN_TOP = 8,
    NK_TEXT_ALIGN_MIDDLE = 16,
    NK_TEXT_ALIGN_BOTTOM = 32,
)
@cenum(nk_text_alignment,
    NK_TEXT_LEFT = 17,
    NK_TEXT_CENTERED = 18,
    NK_TEXT_RIGHT = 20,
)
@cenum(nk_edit_flags,
    NK_EDIT_DEFAULT = 0,
    NK_EDIT_READ_ONLY = 1,
    NK_EDIT_AUTO_SELECT = 2,
    NK_EDIT_SIG_ENTER = 4,
    NK_EDIT_ALLOW_TAB = 8,
    NK_EDIT_NO_CURSOR = 16,
    NK_EDIT_SELECTABLE = 32,
    NK_EDIT_CLIPBOARD = 64,
    NK_EDIT_CTRL_ENTER_NEWLINE = 128,
    NK_EDIT_NO_HORIZONTAL_SCROLL = 256,
    NK_EDIT_ALWAYS_INSERT_MODE = 512,
    NK_EDIT_MULTILINE = 1024,
    NK_EDIT_GOTO_END_ON_ACTIVATE = 2048,
)
@cenum(nk_edit_types,
    NK_EDIT_SIMPLE = 512,
    NK_EDIT_FIELD = 608,
    NK_EDIT_BOX = 1640,
    NK_EDIT_EDITOR = 1128,
)
@cenum(nk_edit_events,
    NK_EDIT_ACTIVE = 1,
    NK_EDIT_INACTIVE = 2,
    NK_EDIT_ACTIVATED = 4,
    NK_EDIT_DEACTIVATED = 8,
    NK_EDIT_COMMITED = 16,
)
@cenum(nk_style_colors,
    NK_COLOR_TEXT = 0,
    NK_COLOR_WINDOW = 1,
    NK_COLOR_HEADER = 2,
    NK_COLOR_BORDER = 3,
    NK_COLOR_BUTTON = 4,
    NK_COLOR_BUTTON_HOVER = 5,
    NK_COLOR_BUTTON_ACTIVE = 6,
    NK_COLOR_TOGGLE = 7,
    NK_COLOR_TOGGLE_HOVER = 8,
    NK_COLOR_TOGGLE_CURSOR = 9,
    NK_COLOR_SELECT = 10,
    NK_COLOR_SELECT_ACTIVE = 11,
    NK_COLOR_SLIDER = 12,
    NK_COLOR_SLIDER_CURSOR = 13,
    NK_COLOR_SLIDER_CURSOR_HOVER = 14,
    NK_COLOR_SLIDER_CURSOR_ACTIVE = 15,
    NK_COLOR_PROPERTY = 16,
    NK_COLOR_EDIT = 17,
    NK_COLOR_EDIT_CURSOR = 18,
    NK_COLOR_COMBO = 19,
    NK_COLOR_CHART = 20,
    NK_COLOR_CHART_COLOR = 21,
    NK_COLOR_CHART_COLOR_HIGHLIGHT = 22,
    NK_COLOR_SCROLLBAR = 23,
    NK_COLOR_SCROLLBAR_CURSOR = 24,
    NK_COLOR_SCROLLBAR_CURSOR_HOVER = 25,
    NK_COLOR_SCROLLBAR_CURSOR_ACTIVE = 26,
    NK_COLOR_TAB_HEADER = 27,
    NK_COLOR_COUNT = 28,
)
@cenum(nk_style_cursor,
    NK_CURSOR_ARROW = 0,
    NK_CURSOR_TEXT = 1,
    NK_CURSOR_MOVE = 2,
    NK_CURSOR_RESIZE_VERTICAL = 3,
    NK_CURSOR_RESIZE_HORIZONTAL = 4,
    NK_CURSOR_RESIZE_TOP_LEFT_DOWN_RIGHT = 5,
    NK_CURSOR_RESIZE_TOP_RIGHT_DOWN_LEFT = 6,
    NK_CURSOR_COUNT = 7,
)

struct nk_user_font_glyph
    uv::NTuple{2, nk_vec2}
    offset::nk_vec2
    width::Cfloat
    height::Cfloat
    xadvance::Cfloat
end

@cenum(nk_font_coord_type,
    NK_COORD_UV = 0,
    NK_COORD_PIXEL = 1,
)

struct nk_baked_font
    height::Cfloat
    ascent::Cfloat
    descent::Cfloat
    glyph_offset::nk_rune
    glyph_count::nk_rune
    ranges::Ptr{nk_rune}
end

struct nk_font_glyph
    codepoint::nk_rune
    xadvance::Cfloat
    x0::Cfloat
    y0::Cfloat
    x1::Cfloat
    y1::Cfloat
    w::Cfloat
    h::Cfloat
    u0::Cfloat
    v0::Cfloat
    u1::Cfloat
    v1::Cfloat
end

struct nk_font_config
    next::Ptr{nk_font_config}
    ttf_blob::Ptr{Cvoid}
    ttf_size::nk_size
    ttf_data_owned_by_atlas::Cuchar
    merge_mode::Cuchar
    pixel_snap::Cuchar
    oversample_v::Cuchar
    oversample_h::Cuchar
    padding::NTuple{3, Cuchar}
    size::Cfloat
    coord_type::nk_font_coord_type
    spacing::nk_vec2
    range::Ptr{nk_rune}
    font::Ptr{nk_baked_font}
    fallback_glyph::nk_rune
    n::Ptr{nk_font_config}
    p::Ptr{nk_font_config}
end

struct nk_font
    next::Ptr{nk_font}
    handle::nk_user_font
    info::nk_baked_font
    scale::Cfloat
    glyphs::Ptr{nk_font_glyph}
    fallback::Ptr{nk_font_glyph}
    fallback_codepoint::nk_rune
    texture::nk_handle
    config::Ptr{nk_font_config}
end

@cenum(nk_font_atlas_format,
    NK_FONT_ATLAS_ALPHA8 = 0,
    NK_FONT_ATLAS_RGBA32 = 1,
)

struct nk_font_atlas
    pixel::Ptr{Cvoid}
    tex_width::Cint
    tex_height::Cint
    permanent::nk_allocator
    temporary::nk_allocator
    custom::nk_recti
    cursors::NTuple{7, nk_cursor}
    glyph_count::Cint
    glyphs::Ptr{nk_font_glyph}
    default_font::Ptr{nk_font}
    fonts::Ptr{nk_font}
    config::Ptr{nk_font_config}
    font_num::Cint
end

struct nk_memory_status
    memory::Ptr{Cvoid}
    type::UInt32
    size::nk_size
    allocated::nk_size
    needed::nk_size
    calls::nk_size
end

@cenum(nk_buffer_allocation_type,
    NK_BUFFER_FRONT = 0,
    NK_BUFFER_BACK = 1,
    NK_BUFFER_MAX = 2,
)
@cenum(nk_text_edit_type,
    NK_TEXT_EDIT_SINGLE_LINE = 0,
    NK_TEXT_EDIT_MULTI_LINE = 1,
)
@cenum(nk_text_edit_mode,
    NK_TEXT_EDIT_MODE_VIEW = 0,
    NK_TEXT_EDIT_MODE_INSERT = 1,
    NK_TEXT_EDIT_MODE_REPLACE = 2,
)

struct nk_command_scissor
    header::nk_command
    x::Int16
    y::Int16
    w::UInt16
    h::UInt16
end

struct nk_command_line
    header::nk_command
    line_thickness::UInt16
    _begin::nk_vec2i
    _end::nk_vec2i
    color::nk_color
end

struct nk_command_curve
    header::nk_command
    line_thickness::UInt16
    _begin::nk_vec2i
    _end::nk_vec2i
    ctrl::NTuple{2, nk_vec2i}
    color::nk_color
end

struct nk_command_rect
    header::nk_command
    rounding::UInt16
    line_thickness::UInt16
    x::Int16
    y::Int16
    w::UInt16
    h::UInt16
    color::nk_color
end

struct nk_command_rect_filled
    header::nk_command
    rounding::UInt16
    x::Int16
    y::Int16
    w::UInt16
    h::UInt16
    color::nk_color
end

struct nk_command_rect_multi_color
    header::nk_command
    x::Int16
    y::Int16
    w::UInt16
    h::UInt16
    left::nk_color
    top::nk_color
    bottom::nk_color
    right::nk_color
end

struct nk_command_triangle
    header::nk_command
    line_thickness::UInt16
    a::nk_vec2i
    b::nk_vec2i
    c::nk_vec2i
    color::nk_color
end

struct nk_command_triangle_filled
    header::nk_command
    a::nk_vec2i
    b::nk_vec2i
    c::nk_vec2i
    color::nk_color
end

struct nk_command_circle
    header::nk_command
    x::Int16
    y::Int16
    line_thickness::UInt16
    w::UInt16
    h::UInt16
    color::nk_color
end

struct nk_command_circle_filled
    header::nk_command
    x::Int16
    y::Int16
    w::UInt16
    h::UInt16
    color::nk_color
end

struct nk_command_arc
    header::nk_command
    cx::Int16
    cy::Int16
    r::UInt16
    line_thickness::UInt16
    a::NTuple{2, Cfloat}
    color::nk_color
end

struct nk_command_arc_filled
    header::nk_command
    cx::Int16
    cy::Int16
    r::UInt16
    a::NTuple{2, Cfloat}
    color::nk_color
end

struct nk_command_polygon
    header::nk_command
    color::nk_color
    line_thickness::UInt16
    point_count::UInt16
    points::NTuple{1, nk_vec2i}
end

struct nk_command_polygon_filled
    header::nk_command
    color::nk_color
    point_count::UInt16
    points::NTuple{1, nk_vec2i}
end

struct nk_command_polyline
    header::nk_command
    color::nk_color
    line_thickness::UInt16
    point_count::UInt16
    points::NTuple{1, nk_vec2i}
end

struct nk_command_image
    header::nk_command
    x::Int16
    y::Int16
    w::UInt16
    h::UInt16
    img::nk_image
    col::nk_color
end

const nk_command_custom_callback = Ptr{Cvoid}

struct nk_command_custom
    header::nk_command
    x::Int16
    y::Int16
    w::UInt16
    h::UInt16
    callback_data::nk_handle
    callback::nk_command_custom_callback
end

struct nk_command_text
    header::nk_command
    font::Ptr{nk_user_font}
    background::nk_color
    foreground::nk_color
    x::Int16
    y::Int16
    w::UInt16
    h::UInt16
    height::Cfloat
    length::Cint
    string::NTuple{1, UInt8}
end

@cenum(nk_command_clipping,
    NK_CLIPPING_OFF = 0,
    NK_CLIPPING_ON = 1,
)

const nk_draw_index = nk_ushort

@cenum(nk_draw_list_stroke,
    NK_STROKE_OPEN = 0,
    NK_STROKE_CLOSED = 1,
)
@cenum(nk_panel_set,
    NK_PANEL_SET_NONBLOCK = 240,
    NK_PANEL_SET_POPUP = 244,
    NK_PANEL_SET_SUB = 246,
)
@cenum(nk_window_flags,
    NK_WINDOW_PRIVATE = 2048,
    NK_WINDOW_DYNAMIC = 2048,
    NK_WINDOW_ROM = 4096,
    NK_WINDOW_NOT_INTERACTIVE = 5120,
    NK_WINDOW_HIDDEN = 8192,
    NK_WINDOW_CLOSED = 16384,
    NK_WINDOW_MINIMIZED = 32768,
    NK_WINDOW_REMOVE_ROM = 65536,
)
