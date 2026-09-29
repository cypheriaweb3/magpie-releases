cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.386"
  sha256 arm:   "70b6f1302d6c2697a68cf69a27f5a24ab08ecee55ba77697a924d4bfcd900e16",
         intel: "f983438a3e20b589fb62b931cb8668765ce113d86858e7ad615b34dfc96d43d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
