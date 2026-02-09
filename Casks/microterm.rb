cask "microterm" do
  version "1.5.1"
  sha256 "67f73613061176a1cdf814a86bc127cafb5c14eaf93fb282f2309c13c625209d"

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
