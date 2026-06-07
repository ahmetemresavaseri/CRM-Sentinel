/**
 * Lightweight class name merger used by shadcn UI components.
 * Accepts any falsy values and joins the rest with spaces.
 */
export function cn(
  ...classes: Array<string | false | null | undefined>
): string {
  return classes.filter(Boolean).join(" ")
}
