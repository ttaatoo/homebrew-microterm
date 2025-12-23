cask "microterm" do
  version "1.1.0"
  sha256 "6e3b14fc8602ae25f3b2729dce8ef6eee8a8e622b028ace06230475dddf655b7"

  url "https://github.com/ttaatoo/microterm/releases/download/v#{version}/µTerm_#{version}_aarch64.dmg"
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
