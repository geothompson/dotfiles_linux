I suppose that depends on how you want them highlighted in what ways. I am assuming you're looking to highlight all the @<thing> in one colour and all the {<thing>} in another colour. The way of doing it that I'll show you is also assuming your Neovim config is loading the Vim runtime path, which I'm fairly certain most people do anyways. If you aren't doing that, then add this line to the top of your init.vim config: set runtimepath^=~/.vim runtimepath+=~/.vim/after

I know this isn't the C Programming Language but I'll use it as an example implementation because I've no idea what language this is. This will work for ANY language/filetype but you'll have to switch some file names around so all in all its not that bad.

Firstly, you're going to want to create a directory ~/.vim/after/syntax if it doesn't exist already, then create a file in that directory named name_of_filetype.vim. For this example using C, the file name would be c.vim. If you aren't sure what the filetype is, you can open the file in vim and type :set ft? in normal mode and vim will tell you what the filetype is.

Next we can put the rules for creating new syntax groups and highlighting them in the way you want. We can use regular expressions or string matching to tell vim what these look like. To highlight any string that starts with @ until encountering a whitespace character, the command is: syn match cCommentDoc "@\<\w\+\>". Of course this language in your screenshot isn't C, so naming it cCommentDoc isn't a great idea. you'll want to name this syntax group starting with whatever filetype you're using here. If it's swift or something then probably name it swiftCommentDoc instead or something like that.

So all that does is tell vim that text beginning with @ until whitespace is called a cCommentDoc; it won't actually be highlighted yet. To do that we use this line to highlgiht this text under the SpecialComment highlighting group: hi def link cCommentDoc SpecialComment. If you're unfamiliar with the highlighting groups in vim, you can type :h group-name and scroll down a little bit. We can see that the SpecialComment group is used for "special things inside a comment",which is exactly what we're highlighting so that's perfect.

Just to recap, this is what the file ~/.vim/after/syntax/c.vim (replacing c.vim with whatever filetype you're working with + .vim) looks like right now:

syn match cCommentDoc "@\<\w\+\>"
hi def link cCommentDoc SpecialComment
To give you an idea of what has been done so far, here's what this comment looks like so far with my colorscheme (your colours will be different probably).

This post has came out way longer than I wanted, so if this looks like what you were expecting or if this sounds close to what you want then feel free to reply with what else you want to highlight and I'll be more than happy to help you with it.
