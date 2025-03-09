import re


def fmt(x): return f"\'{x}\'"


vimrc = "/home/tarcisio/.vim/vimrc"

with open(vimrc, "r") as v:
    for line in v:
        if re.search(r"[nvi]map", line):
            line_l = line.strip().split(" ")
            mode = fmt(line_l[0][0])
            key = fmt(line_l[1])
            action = fmt(''.join([*line_l[2:]]))
            prefix = "vim.keymap.set("
            suffix = ")"
            print(f"{prefix}{mode}, {key}, {action}{suffix}")
