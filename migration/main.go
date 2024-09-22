package main

import (
	"fmt"
	"migration/cmd"
	"migration/util"
)

func main() {
	if err := cmd.NewBundle().Execute(); err != nil {
		util.FatalLog(fmt.Sprintf("Failed to execute the command. Error: %v", err))
	}
}
