cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.807"
  sha256 arm:   "c1d25a52242122ddda4bf0cab1abae55610e3cf1e9e47dd88ee452ccfff6ffca",
         intel: "61421e9d73307dac23c792249f7b7ba8e3e0dd21ef106a1f95516a518b0ced3e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
