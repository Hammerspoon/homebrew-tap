cask "hammerspoon2" do
  # Hammerspoon2's scripts/release/release.sh bumps version and sha256 when it publishes a release.
  version "1.0.0-beta.4"
  sha256 "6b56f0f11f31a1a5033895013c556a4a7ae2a88179f8abb80e4d59cfc6e9e35b"

  url "https://github.com/Hammerspoon/Hammerspoon2/releases/download/#{version}/Hammerspoon-2-#{version}.zip"
  name "Hammerspoon 2"
  desc "Desktop automation, scripted in JavaScript"
  homepage "https://github.com/Hammerspoon/Hammerspoon2"

  # The app's Sparkle feed, so this follows the same releases (betas included) as the app does.
  livecheck do
    url "https://www.hammerspoon.org/2/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Hammerspoon 2.app"
  binary "#{appdir}/Hammerspoon 2.app/Contents/MacOS/hs2"

  uninstall quit: "net.tenshu.Hammerspoon-2"

  zap trash: [
    "~/Library/Caches/net.tenshu.Hammerspoon-2",
    "~/Library/Containers/net.tenshu.Hammerspoon-2.HammerspoonOSAScriptHelper",
    "~/Library/HTTPStorages/net.tenshu.Hammerspoon-2",
    "~/Library/Preferences/net.tenshu.Hammerspoon-2.plist",
    "~/Library/WebKit/net.tenshu.Hammerspoon-2",
  ]
end
