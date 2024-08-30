local jdtls = require("jdtls")
local config = {
	cmd = { "/usr/bin/jdtls" },
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
	settings = {
		java = {
			eclipse = {
				downloadSources = true,
			},
			configuration = {
				updateBuildConfiguration = "interactive",
				runtimes = {
					{
						name = "JavaSE-22",
						path = "/usr/lib/jvm/java-22-openjdk/",
					},
				},
			},
		},
	},
}
jdtls.start_or_attach(config)
jdtls.set_runtime("JavaSE-22")
