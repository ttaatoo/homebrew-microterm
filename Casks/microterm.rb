cask "microterm" do
  version "1.5.0"
  sha256 "38251e5d13e67df7ee3a8c4a120eb0226f6021efd11724c3a5df244201aa8309"

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
