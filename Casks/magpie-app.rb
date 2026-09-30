cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.448"
  sha256 arm:   "a205c27f165d0718570ec8afe63a82e24eedaf0db08351b8558cf87d943d834e",
         intel: "dd69eab1c22ae411070ac499b671e8bf0bf2698d6e4f1c101b420fb79c93242b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
