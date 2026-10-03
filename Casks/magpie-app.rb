cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.750"
  sha256 arm:   "80d588099b7aa018467b468b254c47caeb79c9d77ad4a1330811c3ba085990a0",
         intel: "af271bf60e25c11c0bedb1e0a39bd6a2523498094dcde40e722b833f20274400"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
