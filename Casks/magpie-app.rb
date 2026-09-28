cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.282"
  sha256 arm:   "0e973ea986d9bc301b0865d78ddc8f2eda580c6c4e3a35ce27323c5f7e407d84",
         intel: "5d75b28628a939b5475bb5b183fef3bdee32ffab05e2cb26e7c8b40c5e773b36"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
