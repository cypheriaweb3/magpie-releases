cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.685"
  sha256 arm:   "fac91dc9c5e72dd6250af5cbf5e6f1d5339384f115239d4f8ef999a907b73274",
         intel: "37395c543813a58fdf6e5e4240f3026890ae45ba34ab43e4835d7e407d5d8e89"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
