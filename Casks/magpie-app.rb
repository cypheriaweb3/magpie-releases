cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.845"
  sha256 arm:   "0d5bdfac0658856c00d9ce92c8c1e289e5794e18fccec7621f9e68f97732161f",
         intel: "abadd30c03c9b567a580f91467ce5f321d38d5f23e18fcb783e82a1140e7538a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
