cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.334"
  sha256 arm:   "6e6d0ae4cf6dd58c2a07149f91e7da97bcd1f25d3560964ac79b8775507718e1",
         intel: "6f94f7962c463979c3d40172b8e98c6593a94887fca1c536f81a59e32a024fe5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
