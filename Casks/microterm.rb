cask "microterm" do
  version "1.2.5"
  sha256 "d87c06cce9f48260e6dc4ea79309bdcbad54987e4fa181cdb9abb000520a099e"

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
