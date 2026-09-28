cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.269"
  sha256 arm:   "32803bbd72df0b8876cd4ae2742e8946cee6c3a308644d490f2a80dc10b7dbff",
         intel: "a1a39046acbae1b71ad9752d3553a4ab5accfd07c72442d1f94493aca51ae3ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
