cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.779"
  sha256 arm:   "40baa950b276171e95ccc0cc4a71faa1cd49a962d0896e24a0e9c420723c094c",
         intel: "464d0763bfeeb88bde25e9f2fcc803c42a43398aaf48f05f7e2338ef605024cb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
