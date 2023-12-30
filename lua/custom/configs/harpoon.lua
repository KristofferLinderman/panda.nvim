local harpoon = require 'harpoon'
return {
  {
    '<leader>A',
    function()
      harpoon:list():append()
    end,
    desc = 'Harpoon file',
  },
  {
    '<leader>a',
    function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end,
    desc = 'Harpoon quick menu',
  },
  {
    '<leader>1',
    function()
      harpoon:list():select(1)
    end,
    desc = 'Harpoon to file 1',
  },
  {
    '<leader>2',
    function()
      harpoon:list():select(2)
    end,
    desc = 'Harpoon to file 2',
  },
  {
    '<leader>3',
    function()
      harpoon:list():select(3)
    end,
    desc = 'Harpoon to file 3',
  },
  {
    '<leader>4',
    function()
      harpoon:list():select(4)
    end,
    desc = 'Harpoon to file 4',
  },
  {
    '<leader>5',
    function()
      harpoon:list():select(5)
    end,
    desc = 'Harpoon to file 5',
  },
}
