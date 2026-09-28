cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.260"
  sha256 arm:   "5abbb459213c4ac97e2cfd67537bbcc3fb5840be1a8af30627b0a8253b651795",
         intel: "8e0e7bc42881ba3981057bad163b8e6b9b1d63ddb41b94831664c047f4fc3d71"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
