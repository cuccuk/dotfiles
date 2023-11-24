local opt = vim.opt

opt.nu = true
opt.rnu = true
opt.mouse = nil
opt.ts = 2
opt.sw = 2
opt.et = true
opt.tgc = true
opt.ic = true
opt.ls = 3
opt.smd = false
opt.stal = 2
opt.to = false
opt.shm:append "I"
opt.fcs = "horizup: ,horizdown: ,vertleft: ,vertright: ,verthoriz: "

vim.api.nvim_create_autocmd("termopen", {
  callback = function(args)
    if vim.bo.buftype == "terminal" then
      vim.wo.nu = false
      vim.wo.rnu = false
    end
  end
})
