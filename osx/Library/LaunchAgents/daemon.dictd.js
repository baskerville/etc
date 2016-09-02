{
	"Label": "daemon.dictd",
	"ProgramArguments": [
		"/opt/pkg/sbin/dictd",
		"--debug",
		"nodetach",
		"--log",
		"server",
	],
	"StandardOutPath": "/tmp/dictd.out",
	"StandardErrorPath": "/tmp/dictd.err",
	"RunAtLoad": true,
}
