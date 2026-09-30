cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.523"
  sha256 arm:   "518126883e77a05819869d0607851ffa321b4a3f2b854e3d52c158a37b7b2a0c",
         intel: "a5ac1d74e77344f8b3d20f4c432472c484ba75e5df4b20f1cd2821c022ca75dd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
