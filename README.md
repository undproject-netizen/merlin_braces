# MerlinBraces.vim 🧙‍♂️

Автоматически оборачивает выделенный блок в `{ ... }` или удаляет скобки, если они уже есть.

## Использование

- Выдели блок строк в визуальном режиме (`V`)
- Нажми `<Leader> + j`
- Скобки вставятся или удалятся

### Примечание

При удалении скобок выделены должны быть все строки внутри скобок, но сами скобки не выделяйте.
По умолчанию список типов файлов ограничен:
- javascript
- typescript
- json
- tsx
- jsx
- vim
- c
- delphi
- pascal


## Установка

### Через native pack:
```bash
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/undproject-netizen/merlin_braces.git
```
### Через vim-plug
1. Убедитесь, что у вас установлен [vim-plug](https://github.com/junegunn/vim-plug)
2. Добавьте в `.vimrc`:

```vim
Plug 'undproject-netizen/merlin_braces'
```

