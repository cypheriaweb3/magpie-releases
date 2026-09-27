cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.183"
  sha256 arm:   "285a7b46183b0f0db3064e1266a17ecb1a2c12e02cee204471236bbe6051c288",
         intel: "4d1375c9d2b78bd78a2cddb0b9336ae79c099fe49b9db4edabddae199747b742"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
