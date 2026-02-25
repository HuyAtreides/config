return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      -- Use ZGC for high performance & low latency on large projects like Kafka
      -- Allocated 10GB since for 32GB total
      local jvm_args = {
        "-XX:+UseZGC",
        "-Xms2G",
        "-Xmx10G",
        "-XX:+AlwaysPreTouch",
      }

      -- Ensure opts.jdtls exists
      opts.jdtls = opts.jdtls or {}

      -- Inject the arguments into the jdtls command
      -- LazyVim's java extra uses this table to build the final startup command
      opts.jdtls.cmd = opts.jdtls.cmd or { "jdtls" }

      for _, arg in ipairs(jvm_args) do
        table.insert(opts.jdtls.cmd, "--jvm-arg=" .. arg)
      end

      -- Unique workspace per project to prevent cache corruption
      opts.jdtls_workspace_dir = function(project_name)
        return vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/workspace"
      end

      return opts
    end,
  },
}
