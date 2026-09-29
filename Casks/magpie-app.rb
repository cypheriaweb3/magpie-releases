cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.363"
  sha256 arm:   "3f76d29c5ae583d8f24ee2a83bcc115f63d754b7e31cec8a5f5d55b28051bf82",
         intel: "bfd3f25d52090ae01046b30e85d318e1ed998d6171f4b5fe98447b2e73588405"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
