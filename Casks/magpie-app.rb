cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.218"
  sha256 arm:   "c20a7c9c5b2cefcb6a3d62e66cd2b3c7c8a7fd6ddf24544c8b31c52a560ebfdc",
         intel: "adbbd65f89cabbca31d4d5e5c39238fe5eb8fd94a3661f0e141edb5740403e13"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
