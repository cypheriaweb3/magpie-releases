cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.178"
  sha256 arm:   "449adc2e07dde5625a2b6046be82fabf3a1e360fa9704208a69d277918b661a4",
         intel: "331c50b48f070c25574f7dac8ad896f751b586961b8774fffcba652a79635f81"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
