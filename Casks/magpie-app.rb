cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.525"
  sha256 arm:   "93308af76357c1a07a8dc9c46f1f65535a0a4013d46afbae4ea0cef5cdd55afa",
         intel: "725cab1b09e690a3a47b16e97c6f501162b146a65e7cb4520a2552e9858e057b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
