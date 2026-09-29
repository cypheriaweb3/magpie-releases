cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.372"
  sha256 arm:   "d898b011cb2bf0a1e33f0849cf38f97acc515a1531826a5d4633a3c54f330e72",
         intel: "150627bd0222bd29a3584f4a2c6294c8575ee3a7c12da6a9fc7566490b3bf5e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
