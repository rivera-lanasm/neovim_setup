

### Updating Neovim & Lua


### Using `help`


### Common Commands & Concepts
- undo latest change: <leader-u>
- navigating: 
    - cursor: j (down), h (left), k (up), l (right)
    - line: <Home>/<End> go to start/end of current line
    - navigate to line number: CAPS LOCK: Number + G

- <:q!> quits the editor, DISCARDING any changes you have made

**Editing Outside Insert Mode**
- <x> Delete Character in Current Position
- <d$> Delete curent/subsequent characters in line
- <dd> Delete current line
    - deleted line will be stored in register, can paste somewhere else afterwards using <p>
- <u> Undo Last Edit
- <C-r> Redo

**Navigating**
- </...> Search for text
   - add \c suffix to ignore case -> </example\c>

**Find/Replace**
- `:s/old/new/g` to substitute "new" for "old"
    - 'g' flag (global) finds/replaces all instances of 'old' for 'new' in the current line
- To substitute phrases between two line #'s type
    - `:#,#s/old/new/g`
- To substitute all occurrences in the file type
    - `:%s/old/new/g'
- To ask for confirmation each time add 'c'
    - `:%s/old/new/gc'


**Shell Commands**
- <:!> followed by an external command to execute that command. --> ':! ls'


**Visual Selection**
- initiate with <v>





