#!/bin/bash
ranger --copy-config=rc
[ -f ~/.config/ranger/plugins/devicons2 ]  || git clone https://github.com/cdump/ranger-devicons2 ~/.config/ranger/plugins/devicons2
[ -f ~/.config/ranger/plugins/zoxide ]  || git clone https://github.com/jchook/ranger-zoxide ~/.config/ranger/plugins/zoxide