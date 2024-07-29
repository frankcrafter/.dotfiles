local config = {
	cmd = {
		"java",

		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		--"-javaagent:" .. "/home/frank/.local/share/nvim/mason/packages/jdtls/lombok.jar",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",

		"-jar",
		"/home/frank/.jdtls/plugins/org.eclipse.equinox.launcher_1.6.800.v20240330-1250.jar",

		"-configuration",
		"/home/frank/.jdtls/config_linux/",

		"-data",
		"/home/frank/.cache/jdtls/workspace",
	},
	settings = {
		java = {
			configuration = {
				runtimes = {
					name = "JavaSE-22.0.1",
					path = "/usr/lib/jvm/java-22-openjdk",
					default = true,
				},
			},
			project = {
				sourcePaths = { "src" },
				outputPath = "bin",
				referencedLibraries = {
					"**/lib/*.jar",
					"/usr/lib/jvm/javafx-sdk-22.0.2/lib/javafx.base.jar",
					"/usr/lib/jvm/javafx-sdk-22.0.2/lib/javafx.controls.jar",
					"/usr/lib/jvm/javafx-sdk-22.0.2/lib/javafx.fxml.jar",
					"/usr/lib/jvm/javafx-sdk-22.0.2/lib/javafx.graphics.jar",
					"/usr/lib/jvm/javafx-sdk-22.0.2/lib/javafx.media.jar",
					"/usr/lib/jvm/javafx-sdk-22.0.2/lib/javafx.swing.jar",
					"/usr/lib/jvm/javafx-sdk-22.0.2/lib/javafx-swt.jar",
					"/usr/lib/jvm/javafx-sdk-22.0.2/lib/javafx.web.jar",
				},
			},
			completion = {
				filteredTypes = {
					"java.awt.*",
					"com.sun.*",
					"sun.*",
					"jdk.*",
					"org.graalvm.*",
					"io.micrometer.shaded.*",
				},
			},
		},
	},
	init_options = {
		bundles = {},
	},
}

require("jdtls").start_or_attach(config)
