cask "microterm" do
  version "1.5.2"
  sha256 "dbd3db60a11d7e2020e991a4491e22e466db33be16f51e6eac4f89e5c13652fe"

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
