cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.728"
  sha256 arm:   "40e8119e6a7a309d6a8098862d62925cfb732c171a25825c894fd7a9c6291e59",
         intel: "cb7ee4802e603adf74a89540c9612ec5f3a5f075cf2e57a367ee67db1a78ff99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
