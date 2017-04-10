set encoding=utf-8
scriptencoding utf-8

"----------------------------------------------------------
" NeoBundle
"----------------------------------------------------------

if has('vim_starting')
	" 初回起動時のみruntimepathにNeoBundleのパスを指定する
	set runtimepath+=~/.vim/bundle/neobundle.vim/

	" NeoBundleが未インストールであればgit cloneする
	if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
		echo "install NeoBundle..."
		:call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
	endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))


" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" railscasts カラースキーム
NeoBundle 'jpo/vim-railscasts-theme'
" ステータスラインの表示内容強化
NeoBundle 'itchyny/lightline.vim'

" カラースキーム一覧表示に Unite.vim を使う
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'vim-scripts/twilight'

call neobundle#end()

" ファイルタイプ別のVimプラグイン/インデントを有効にする
filetype plugin indent on

" 未インストールのVimプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck


"----------------------------------------------------------
" 共通設定 
"----------------------------------------------------------
" バックアップファイル系を生成しない
set noswapfile
set nobackup
set viminfo=
set noundofile
" vimfilerのセーフモードをOFF
let g:vimfiler_safe_mode_by_default=0

"----------------------------------------------------------
" 見た目の設定 
"----------------------------------------------------------
" ステータスラインを常に表示
set laststatus=2
" 現在のモードを表示
set showmode
" 打ったコマンドをステータスラインの下に表示
set showcmd
" ステータスラインの右側にカーソルの位置を表示する
set ruler

"----------------------------------------------------------
" 入力 
"----------------------------------------------------------
" インデント
set tabstop=4
set shiftwidth=4
set expandtab

"----------------------------------------------------------
" 検索
"----------------------------------------------------------
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"----------------------------------------------------------
" KeyMapping
"----------------------------------------------------------
" VimFiler起動
nnoremap <silent><C-e> :VimFiler<CR>
" spaceでコマンドモード
nnoremap <space> : 
" jjでinsertを抜ける
inoremap <silent> jj <ESC>
