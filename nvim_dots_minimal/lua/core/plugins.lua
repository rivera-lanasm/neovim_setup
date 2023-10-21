
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- The bootstrap function does install this the first time, but we want 
    -- packer to be able to update itself, so we declare it again here.
    use 'wbthomason/packer.nvim'
    -- Packages we want packer to manage go here
        -- Visuals
    use 'catppuccin/nvim'
    -- ...
    use { 'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons', 'akinsho/bufferline.nvim'}}
    
    use 'nvim-lualine/lualine.nvim'

    use 'preservim/nerdcommenter'

    if packer_bootstrap then
        require('packer').sync()
      end
    end)
-- This will tell the lua interpreter to run ./lua/config/init.lua

