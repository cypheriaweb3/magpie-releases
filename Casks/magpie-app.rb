cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.176"
  sha256 arm:   "614b78c0368f2a76569bfad651de71f0e8e6e4d791f859b309617433e94c5e2b",
         intel: "1b4b40f40a02d938b94be8299d087350fe84ddcbead329f9fb00ba5c60907302"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
