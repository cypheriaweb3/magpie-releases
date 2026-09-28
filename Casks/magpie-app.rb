cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.284"
  sha256 arm:   "a2dc68a85e0d1f9569a8b64c64697d22903f185104da45f6731c0141bda9e6e1",
         intel: "dd7422c792a335ef833b12cd312e2a1719cdb529de958b922d7459c77f81b3bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
