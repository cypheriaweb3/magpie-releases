cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.244"
  sha256 arm:   "fe5b006d7702253e768ec0b78dfc51ba1e5ecb540eedad2e6e94e36f567bc2b7",
         intel: "42fe438eeaf65e4cac620352228ab501edfb811be1f9a7e107471551de57633b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
