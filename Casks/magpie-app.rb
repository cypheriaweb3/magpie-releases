cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.498"
  sha256 arm:   "6ad9b71b5a622ce10ce250a7021a4635ffe8367b033abf8af722d9a1ce7641c6",
         intel: "e0ab7a0bfbd41bb787e5005c997909484592ee74bf5586532d534d0fc6f8ee8f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
