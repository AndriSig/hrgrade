#hrgrade, a simple script made to make myschool grading slightly less painful.

##Suggested keymappings
```vim
nnoremap <leader>nd :call NextDir()<cr>
nnoremap <leader>pd :call PrevDir()<cr>
nnoremap <leader>rg yiw:Rename <c-r>=expand("<cWORD>")<cr>-einkunn.txt
```

The first two will go to the next or previous assignment.

The last will create a Rename command using the score you have your cursor on

So if you write this into comments

>Score: 8,2

With your cursor anywhere on the 8,2 you will get the command

>:Rename 8,2-einkunn.txt

And just have to press enter to submit the change


Now for this plugin to work you are going to have to have

```vim
Plugin 'scrooloose/nerdtree.git'
Bundle 'tpope/vim-eunuch'
Bundle 'ivalkeen/nerdtree-execute'
```

Now you might say "Wait a minute? It doesn't actually use all of those!"

And to that i say, yes, true.. But they are essential to the vim workflow this plugin supports

