#coding:ASCII-8BIT
_erbout = ''; _erbout.concat(( form_for @user, '/register', :id => 'register' do |f| ).to_s); _erbout.concat "\n"
; _erbout.concat "  "; _erbout.concat(( f.error_messages ).to_s); _erbout.concat "\n"
; _erbout.concat "  "; _erbout.concat(( f.text_field_block :name, :caption => "Full name" ).to_s); _erbout.concat "\n"
; _erbout.concat "  "; _erbout.concat(( f.text_field_block :email ).to_s); _erbout.concat "\n"
; _erbout.concat "  "; _erbout.concat(( f.check_box_block  :remember_me ).to_s); _erbout.concat "\n"
; _erbout.concat "  "; _erbout.concat(( f.select_block     :fav_color, :options => ['red', 'blue'] ).to_s); _erbout.concat "\n"
; _erbout.concat "  "; _erbout.concat(( f.password_field_block :password ).to_s); _erbout.concat "\n"
; _erbout.concat "  "; _erbout.concat(( f.submit_block "Create", :class => 'button' ).to_s); _erbout.concat "\n"
;  end ; _erbout.concat "\n"
; puts _erbout
; _erbout.force_encoding(__ENCODING__)
