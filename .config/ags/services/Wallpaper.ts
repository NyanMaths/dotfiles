import { dependencies, sh } from "lib/utils"
import options from "options";
const hyprland = await Service.import("hyprland");

const WP = `${Utils.HOME}/.cache/wal/current-wallpaper`

class Wallpaper extends Service {
    static {
        Service.register(this, {}, {
            "wallpaper": ["string"],
        })
    }

    #blockMonitor = false
    #isRunning = false

    #wallpaper() {
        if (!dependencies("swww"))
            return

        hyprland.monitors.map(m => m.name);
        sh([
            "swww", "img",
            "--invert-y",
            "--transition-type", "grow",
            "--transition-duration", "0.6",
            "--transition-fps", "120",
            WP,
        ]).then(() => {
            this.changed("wallpaper")
        })
    }

    async #setWallpaper(path: string) {
        this.#blockMonitor = true

		await sh(`ln -s -r -f ${path} ${WP}`)
        this.#wallpaper()
		await sh(`wal -s -n -i ${path}`)

		await sh(`ln -sfr ${path} ${Utils.HOME}/.mozilla/firefox/nyanmaths/chrome/ASSETS/wallpaper/wallpaper`)
		
        this.#blockMonitor = false
    }

    readonly set = (path: string) => { this.#setWallpaper(path) }
    readonly isRunning = () => { return this.#isRunning }

    get wallpaper() { return WP }

    constructor() {
        super()

        if (!dependencies("swww") || !options.wallpaper.enable.value)
            return this

        this.#isRunning = true
    }
}

export default new Wallpaper
