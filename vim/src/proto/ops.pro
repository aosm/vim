/* ops.c */
extern int get_op_type __ARGS((int char1, int char2));
extern int op_on_lines __ARGS((int op));
extern int get_op_char __ARGS((int optype));
extern int get_extra_op_char __ARGS((int optype));
extern void op_shift __ARGS((oparg_T *oap, int curs_top, int amount));
extern void shift_line __ARGS((int left, int round, int amount));
extern void op_reindent __ARGS((oparg_T *oap, int (*how)(void)));
extern int get_expr_register __ARGS((void));
extern void set_expr_line __ARGS((char_u *new_line));
extern char_u *get_expr_line __ARGS((void));
extern char_u *get_expr_line_src __ARGS((void));
extern int valid_yank_reg __ARGS((int regname, int writing));
extern void get_yank_register __ARGS((int regname, int writing));
extern int may_get_selection __ARGS((int regname));
extern void *get_register __ARGS((int name, int copy));
extern void put_register __ARGS((int name, void *reg));
extern int yank_register_mline __ARGS((int regname));
extern int do_record __ARGS((int c));
extern int do_execreg __ARGS((int regname, int colon, int addcr));
extern int insert_reg __ARGS((int regname, int literally));
extern int get_spec_reg __ARGS((int regname, char_u **argp, int *allocated, int errmsg));
extern int cmdline_paste_reg __ARGS((int regname, int literally));
extern void adjust_clip_reg __ARGS((int *rp));
extern int op_delete __ARGS((oparg_T *oap));
extern int op_replace __ARGS((oparg_T *oap, int c));
extern void op_tilde __ARGS((oparg_T *oap));
extern int swapchar __ARGS((int op_type, pos_T *pos));
extern void op_insert __ARGS((oparg_T *oap, long count1));
extern int op_change __ARGS((oparg_T *oap));
extern void init_yank __ARGS((void));
extern void clear_registers __ARGS((void));
extern int op_yank __ARGS((oparg_T *oap, int deleting, int mess));
extern void do_put __ARGS((int regname, int dir, long count, int flags));
extern void adjust_cursor_eol __ARGS((void));
extern int preprocs_left __ARGS((void));
extern int get_register_name __ARGS((int num));
extern void ex_display __ARGS((exarg_T *eap));
extern void do_do_join __ARGS((long count, int insert_space));
extern int do_join __ARGS((int insert_space));
extern void op_format __ARGS((oparg_T *oap, int keep_cursor));
extern void op_formatexpr __ARGS((oparg_T *oap));
extern int fex_format __ARGS((linenr_T lnum, long count, int c));
extern void format_lines __ARGS((linenr_T line_count));
extern int paragraph_start __ARGS((linenr_T lnum));
extern int do_addsub __ARGS((int command, linenr_T Prenum1));
extern int read_viminfo_register __ARGS((vir_T *virp, int force));
extern void write_viminfo_registers __ARGS((FILE *fp));
extern void x11_export_final_selection __ARGS((void));
extern void clip_free_selection __ARGS((VimClipboard *cbd));
extern void clip_get_selection __ARGS((VimClipboard *cbd));
extern void clip_yank_selection __ARGS((int type, char_u *str, long len, VimClipboard *cbd));
extern int clip_convert_selection __ARGS((char_u **str, long_u *len, VimClipboard *cbd));
extern void dnd_yank_drag_data __ARGS((char_u *str, long len));
extern char_u get_reg_type __ARGS((int regname, long *reglen));
extern char_u *get_reg_contents __ARGS((int regname, int allowexpr, int expr_src));
extern void write_reg_contents __ARGS((int name, char_u *str, int maxlen, int must_append));
extern void write_reg_contents_ex __ARGS((int name, char_u *str, int maxlen, int must_append, int yank_type, long block_len));
extern void clear_oparg __ARGS((oparg_T *oap));
extern void cursor_pos_info __ARGS((void));
/* vim: set ft=c : */
