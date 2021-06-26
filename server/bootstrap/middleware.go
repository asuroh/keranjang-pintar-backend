package bootstrap

import (
	"keranjang-pintar-backend/pkg/str"
	appMW "keranjang-pintar-backend/server/middleware"
)

// RegisterMiddleware ...
func (boot *Bootup) RegisterMiddleware() {
	recovery := appMW.RecoverInit{
		Debug: str.StringToBool(boot.EnvConfig["APP_DEBUG"]),
	}
	boot.R.Use(recovery.Recoverer)

	boot.R.Use(appMW.NotfoundMiddleware)
}
