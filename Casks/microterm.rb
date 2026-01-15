cask "microterm" do
  version "1.4.0"
  sha256 "7031c37d935d68a3749b74fb6e30eb1c7cad2e22e2d05dda3c99ef062a855614"

  url "https://github.com/ttaatoo/microterm/releases/download/v#{version}/microterm_#{version}_aarch64.dmg"
  name "µTerm"
  desc "Lightweight macOS menubar terminal application"
  homepage "https://github.com/ttaatoo/microterm"

  depends_on macos: ">= :ventura"

  app "µTerm.app"

  zap trash: [
    "~/Library/Application Support/com.microterm.app",
    "~/Library/Preferences/com.microterm.app.plist",
    "~/Library/Caches/com.microterm.app",
  ]
end
