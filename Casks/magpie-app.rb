cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.192"
  sha256 arm:   "a892af1e2d351b6ba07774960bfab0c45b87e07975e2ea6cf97144bd196a734c",
         intel: "93583311e83b6e9709a9adcda441a2dd17f8ae1f96f494e6c22b053f214f32ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
