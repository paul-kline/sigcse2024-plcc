#!/bin/sh

# SPDX-FileCopyrightText: 2023 Stoney Jackson <dr.stoney@gmail.com>
#
# SPDX-License-Identifier: GPL-3.0-or-later

rm -rf "$HOME/plcc"
git clone https://github.com/ourPLCC/plcc.git "$HOME/plcc"
git -C "$HOME/plcc" checkout v4.0.1

# Define LIBPLCC and add it to PATH in ~/.bashrc
echo 'export LIBPLCC="$HOME/plcc/src"
export PATH="$LIBPLCC:$PATH"
' >> "$HOME/.bashrc"

exec $SHELL
