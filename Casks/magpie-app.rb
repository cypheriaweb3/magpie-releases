cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.860"
  sha256 arm:   "2aa6ba3c338f99b93a9f4c82ea8ed2ad7956fa5468474a96e459cdb30b79cc42",
         intel: "8019d9ba2ba610a6817bc0ebc43c09f1f87130b0867e68f57b18658b3a0b724c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
