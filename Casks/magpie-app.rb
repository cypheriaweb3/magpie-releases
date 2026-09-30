cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.475"
  sha256 arm:   "d5cf0efdf7caa15e84503975782b5a1fe4c48fa229bf9a1e3b2b90a1367f0ba7",
         intel: "0adb4cbd18e22ad051ecd42ac2e66a662a11ae771d015e6118798dad16e23a5e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
