cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.510"
  sha256 arm:   "30dcb136e351e196f578f29bafc73eb1069913adbfcef48587ae0db0a302e5cc",
         intel: "f14c8fa292a3c234a05cbc1bb1dc6b766a891e0a507d933591c9d865b0e2e886"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
